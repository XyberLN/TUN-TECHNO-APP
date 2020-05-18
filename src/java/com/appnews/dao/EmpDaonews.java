/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.appnews.dao;
import com.appnews.beans.Empnews;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author Xyber LN
 */
public class EmpDaonews {
      

    public static Connection getConnection(){
        
       
		Connection con=null;
//                   
                               Empnews db=new Empnews();
		try{
			Class.forName("org.mariadb.jdbc.Driver");
//			con=DriverManager.getConnection("jdbc:mariadb://localhost:3306/tuntechn_tundb?useUnicode=yes&characterEncoding=UTF-8","tuntechn_tundb","Sunloveheart@1");
	                                con=DriverManager.getConnection(db.getDblocalhost(),db.getUserdb(),db.getPasswddb());	
                }catch(Exception e){System.out.println(e);}
		return con;
	}

	public static List<Empnews> getRecords(int start,int total){
		List<Empnews> list=new ArrayList<Empnews>();
		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from appmvdb ORDER BY mv_id DESC limit  "+(start-1)+","+total );
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				Empnews e=new Empnews();
				e.setMv_id(rs.getInt(1));
				e.setMv_titile(rs.getString(2));
				e.setMv_info(rs.getString(3));
                                                                e.setMv_type(rs.getString(4));
                                                                e. setMv_date(rs.getString(5));
                                                                e.setMv_pic(rs.getBlob(6));
				list.add(e);
			}
			con.close();
		}catch(Exception e){System.out.println(e);}
		return list;
	}
}
