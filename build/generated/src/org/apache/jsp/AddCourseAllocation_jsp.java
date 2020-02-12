package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Kemboi.YearOfStudy;
import Kemboi.SemesterOfStudy;
import Kemboi.Department;
import Kemboi.Courses;
import Kemboi.Lecturer;
import java.util.ArrayList;

public final class AddCourseAllocation_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>TODO supply a title</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        ");

            ArrayList<Lecturer> lecturers=(ArrayList<Lecturer>)session.getAttribute("lectures");
            ArrayList<Courses> courseses=(ArrayList<Courses>)session.getAttribute("courseses");
            ArrayList<Department> departments=(ArrayList<Department>)session.getAttribute("departments");
            ArrayList<SemesterOfStudy> semesterOfStudys=(ArrayList<SemesterOfStudy>)session.getAttribute("semesterOfStudys");
            ArrayList<YearOfStudy> yearOfStudys=(ArrayList<YearOfStudy>)session.getAttribute("yearOfStudys");
            YearOfStudy y=(YearOfStudy)session.getAttribute("yos");


        
      out.write("\n");
      out.write("        <form action=\"AddCourseAllocation\" method=\"post\">\n");
      out.write("            Lecturers:\n");
      out.write("            <!--<input type=\"number\" name=\"lecturerID\">-->\n");
      out.write("           <select name=\"lecturerID\">\n");
      out.write("                ");
 for(Lecturer lecturer:lecturers){ 
      out.write("\n");
      out.write("                   <option value=\"");
      out.print(lecturer.getLecturerID() );
      out.write("\">\n");
      out.write("                      ");
      out.print( lecturer.getSalutation()+"  "+lecturer.getFirstName()+" "+lecturer.getSecondName() );
      out.write("\n");
      out.write("                   </option>\n");
      out.write("                ");
 }  
      out.write("\n");
      out.write("            </select><br>\n");
      out.write("            Courses:\n");
      out.write("            <!--<input type=\"text\" name=\"courseID\"><br>-->\n");
      out.write("            \n");
      out.write("            <select name=\"courseID\">\n");
      out.write("                ");
 for(Courses  courses:courseses){ 
      out.write("\n");
      out.write("                   <option value=\"");
      out.print(courses.getUnitCode());
      out.write("\">\n");
      out.write("                      ");
      out.print( courses.getCourseName() );
      out.write("\n");
      out.write("                   </option>\n");
      out.write("                ");
 }  
      out.write("\n");
      out.write("            </select><br>\n");
      out.write("            Departments:\n");
      out.write("            <!--<input type=\"number\" name=\"departmentID\"><br>-->\n");
      out.write("            \n");
      out.write("            <select name=\"departmentID\">\n");
      out.write("                ");
 for(Department  department:departments){ 
      out.write("\n");
      out.write("                   <option value=\"");
      out.print(department.getDepartmentID());
      out.write("\">\n");
      out.write("                      ");
      out.print( department.getDepartmentName());
      out.write("\n");
      out.write("                   </option>\n");
      out.write("                ");
 }  
      out.write("\n");
      out.write("            </select><br>\n");
      out.write("            Semester:\n");
      out.write("            <!--<input type=\"number\" name=\"semesterID\" min=\"1\" max=\"3\"><br>!-->\n");
      out.write("            \n");
      out.write("            <select name=\"semesterID\">\n");
      out.write("                ");
 for(SemesterOfStudy semesterOfStudy:semesterOfStudys ){ 
      out.write("\n");
      out.write("                   <option value=\"");
      out.print( semesterOfStudy.getSemesterID());
      out.write("\">\n");
      out.write("                      ");
      out.print( semesterOfStudy.getSemesterName());
      out.write("\n");
      out.write("                   </option>\n");
      out.write("                ");
 }  
      out.write("\n");
      out.write("            </select><br>\n");
      out.write("            \n");
      out.write("            Year:\n");
      out.write("            <!--<input type=\"number\" name=\"yearID\"><br>!-->\n");
      out.write("            \n");
      out.write("            <select name=\"yearID\">\n");
      out.write("                ");
 for(YearOfStudy yearOfStudy:yearOfStudys ){ 
      out.write("\n");
      out.write("                   <option value=\"");
      out.print( yearOfStudy.getYearID());
      out.write("\">\n");
      out.write("                      ");
      out.print( yearOfStudy.getYearName());
      out.write("\n");
      out.write("                   </option>\n");
      out.write("                ");
 }  
      out.write("\n");
      out.write("            </select><br>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("           Year_Generated:\n");
      out.write("           <input type=\"text\" value=\"");
      out.print( y.getYearName() );
      out.write("\" ><br>\n");
      out.write("           \n");
      out.write("            <input type=\"Submit\" value=\"ADD\">\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
