/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.93
 * Generated at: 2023-09-22 01:29:03 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.quiz2;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import service.NewPassword;
import model.AccountDAO;
import beans.AccountVO;

public final class update_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/quiz2/header.jsp", Long.valueOf(1695264293247L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("model.AccountDAO");
    _jspx_imports_classes.add("service.NewPassword");
    _jspx_imports_classes.add("beans.AccountVO");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>header.jsp</title>\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"../css/style.css\">\r\n");
      out.write("<script src=\"../js/message.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	");

		AccountDAO dao = new AccountDAO();
		AccountVO user = (AccountVO)session.getAttribute("user");
		
		String login = "logout";
		String myPage = "myPage";
		
		if (user == null) {
			user = new AccountVO();
			user.setNick("현재 로그인 중이 아닙니다.");
			
			login = "login";
			myPage = "";
		}
	
      out.write("\r\n");
      out.write("	\r\n");
      out.write("	<h1><a href=\"home.jsp\">Quiz02</a></h1>\r\n");
      out.write("	\r\n");
      out.write("	<nav>\r\n");
      out.write("		<ul class=\"menu\">\r\n");
      out.write("			<li><a href=\"home.jsp\">home</a></li>\r\n");
      out.write("			<li><a href=\"");
      out.print(login );
      out.write(".jsp\">");
      out.print(login );
      out.write("</a></li>\r\n");
      out.write("			<li><a href=\"signUp.jsp\">signUp</a>\r\n");
      out.write("			<li><a href=\"");
      out.print(myPage );
      out.write(".jsp\">");
      out.print(myPage );
      out.write("</a>\r\n");
      out.write("		</ul>\r\n");
      out.write("	</nav>\r\n");
      out.write("	\r\n");
      out.write("	<hr>\r\n");
      out.write("	<div>현재 로그인 : ");
      out.print(user.getNick() );
      out.write("</div>\r\n");
      out.write("	<hr>\r\n");
      out.write("	\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("	");
      beans.AccountVO input = null;
      input = (beans.AccountVO) _jspx_page_context.getAttribute("input", javax.servlet.jsp.PageContext.PAGE_SCOPE);
      if (input == null){
        input = new beans.AccountVO();
        _jspx_page_context.setAttribute("input", input, javax.servlet.jsp.PageContext.PAGE_SCOPE);
      }
      out.write('\r');
      out.write('\n');
      out.write('	');
      org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("input"), request);
      out.write("\r\n");
      out.write("\r\n");
      out.write("	");

		String pw = input.getUserpw();
		String hash = NewPassword.getHash(pw);
		
		input.setUserpw(hash);
		
		int row = dao.update(input);
		String msg = "수정 ";
		msg += row == 0 ? "실패" : "성공";
		
		session.removeAttribute("user");
	
      out.write("\r\n");
      out.write("\r\n");
      out.write("	<script>\r\n");
      out.write("		message('");
      out.print(msg );
      out.write('\'');
      out.write(',');
      out.write(' ');
      out.print(row );
      out.write(");\r\n");
      out.write("	</script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
