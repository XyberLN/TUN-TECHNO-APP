<%--
  Created by IntelliJ IDEA.
  User: JavaOnlineClass
  Date: 2/27/2018
  Time: 7:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.io.OutputStream"%>
<%@page import="com.appnews.beans.Empnews;"%>
<%@page import="java.sql.*"%>

<%
    String id = request.getParameter("id");

//    String connectionURL = "jdbc:mariadb://167.88.15.112:3306/tuntechn_tundb?useUnicode=yes&characterEncoding=UTF-8";
//    String user = "tuntechn_tundb";
//    String pass = "Sunloveheart@";
    Empnews db=new Empnews();
    Connection con = null;

    try{
        Class.forName("org.mariadb.jdbc.Driver");
        con = DriverManager.getConnection(db.getDblocalhost(), db.getUserdb(), db.getPasswddb());

        PreparedStatement ps = con.prepareStatement("select * from appmvdb where mv_id=?");
        ps.setString(1, id);
        ResultSet rs = ps.executeQuery();

        if(rs.next()){
            Blob blob = rs.getBlob("mv_pic");
            byte byteArray[] = blob.getBytes(1, (int)blob.length());

            response.setContentType("image/gif");
            OutputStream os = response.getOutputStream();
            os.write(byteArray);
            os.flush();
            os.close();
        }
    }
    catch(Exception e){
        e.printStackTrace();
    }
    finally{
        if(con != null){
            try{
                con.close();
            }
            catch(Exception e){
                e.printStackTrace();
            }
        }
    }
%>