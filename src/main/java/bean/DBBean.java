package bean;

import java.sql.*;

public class DBBean {

//    public String driverName="com.mysql.jdbc.Driver";
//    public String DUserName="root";
//    public String DPassword="1234";
//    public String dataBaseUrl="jdbc:mysql://127.0.0.1:3306/sa";//数据库名，而不是连接名
    public Connection conn=null;
    public Statement stmt=null;


	public String driverName="oracle.jdbc.driver.OracleDriver";
	private String dataBaseUrl="jdbc:oracle:thin:@localhost:1521:orcl";
	public String DUserName="sys as sysdba";
	public String DPassword="admin";




    public DBBean()
    {
        try {
            Class.forName(driverName);
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            System.out.print("驱动加载失败"+e.getMessage());
        }

        try {
            conn=DriverManager.getConnection(dataBaseUrl,DUserName,DPassword);
        } catch (SQLException e1) {
            // TODO Auto-generated catch block
            System.out.print("链接失败"+ e1.getMessage());
        }
        try {
            stmt=conn.createStatement();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            System.out.print("statement语句错误"+e.getMessage());
        }
    }

    public boolean Add(String sno,String sname,String ssex,String stelephone,String smajor){
        String insertSql="insert into student values('"+sno+"','"+sname+"','"+ssex+"','"+stelephone+"','null"+"','"+smajor+"')";
        try {
            stmt.execute(insertSql);
        } catch (SQLException e) {
            System.out.print("插入失败"+e.getMessage()+insertSql);
            return false;
        }
        return  true;
    }
    public ResultSet Query(){
        String querySql="select * from student";
        ResultSet rs;
        try {
             rs=stmt.executeQuery(querySql);
             return rs;
        } catch (SQLException e) {
            System.out.print("查询失败"+e.getMessage()+querySql);
        }
        return null;

    }



    public void CloseConnect() throws SQLException
    {
        conn.close();
        stmt.close();
    }

}

