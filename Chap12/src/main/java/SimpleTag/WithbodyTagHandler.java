package SimpleTag;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class WithbodyTagHandler extends SimpleTagSupport {
	
	public void doTag() throws JspException, IOException{
		
		JspContext jspContext = getJspContext();
		JspWriter out = jspContext.getOut();
		JspFragment body = getJspBody();
		
		out.print("<h3>[");
		body.invoke(out); //out으로 명시
		out.print("]님 환영합니다!</br>");
		
		Date today = new Date();
		SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd"); //날짜 표시 format만들어줌
		SimpleDateFormat time = new SimpleDateFormat("hh:mm:ss a"); //시간 표시 format만들어줌
		out.print("[");
		getJspBody().invoke(null); //jsp 페이지와 동일한 출력 스트림 사용
		out.print("]님 현재 날짜와 시간은 "+date.format(today)+" "+time.format(today)+"입니다.</h3>");
		
		
	}

}
