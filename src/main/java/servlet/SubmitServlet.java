package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import bean.DBBean;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/SubmitServlet")
public class SubmitServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubmitServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub

        //解决中文乱码
        response.setContentType("text/html;charset=utf-8");
        //请求解决乱码
        request.setCharacterEncoding("utf-8");
        //响应解决乱码
        response.setCharacterEncoding("utf-8");

        response.setContentType("text/html;charset=utf-8");
        HttpSession session=request.getSession();
        PrintWriter out=response.getWriter();
        String sno=request.getParameter("sno");
        String sname=request.getParameter("sname");
        String ssex=request.getParameter("ssex");
        String stelephone=request.getParameter("stelephone");
        String smajor= request.getParameter("smajor");

        DBBean db=new DBBean();

        String sql="select * from freshman where 考生号='"+sno+"' and 姓名='"+sname+"'";
        System.out.println(sql);
        ResultSet rs=db.QueryByString(sql);
        try {
            if(rs.next()){

               request.getRequestDispatcher("checkPay.jsp").forward(request,response);
            }
            else
            {
                out.print("<script type=\"text/javascript\" language=\"javascript\">\n" +
                        "alert(\"抱歉,你好像不是本校的学生\");\n" +
                        "window.document.location.href=\"index.jsp\";\n" +
                        "</script> \n");
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }

    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}
