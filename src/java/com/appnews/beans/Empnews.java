/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.appnews.beans;

import java.sql.Blob;

/**
 *
 * @author Xyber LN
 */
public class Empnews {
 private int mv_id;
    private String mv_titile;
    private String mv_info;
    private String mv_type;
    private String mv_date;
    private Blob mv_pic;
//    private String dblocalhost = "jdbc:mariadb://localhost:3306/tuntechn_tundb?useUnicode=yes&characterEncoding=UTF-8";
//    private String userdb = "tuntechn_tundb";
//    private String passwddb = "Sunloveheart@1";
     private String dblocalhost = "jdbc:mariadb://localhost:3306/appdb?useUnicode=yes&characterEncoding=UTF-8";
    private String userdb = "root";
    private String passwddb = "";
    
    public int getMv_id() {
        return mv_id;
    }

    public void setMv_id(int mv_id) {
        this.mv_id = mv_id;
    }

    public String getMv_titile() {
        return mv_titile;
    }

    public void setMv_titile(String mv_titile) {
        this.mv_titile = mv_titile;
    }

    public String getMv_info() {
        return mv_info;
    }

    public void setMv_info(String mv_info) {
        this.mv_info = mv_info;
    }

    public String getMv_type() {
        return mv_type;
    }

    public void setMv_type(String mv_type) {
        this.mv_type = mv_type;
    }

    public String getMv_date() {
        return mv_date;
    }

    public void setMv_date(String mv_date) {
        this.mv_date = mv_date;
    }

       public Blob getMv_pic() {
        return mv_pic;
    }

    public void setMv_pic(Blob mv_pic) {
        this.mv_pic = mv_pic;
    }

    public String getDblocalhost() {
        return dblocalhost;
    }

    public void setDblocalhost(String dblocalhost) {
        this.dblocalhost = dblocalhost;
    }

    public String getUserdb() {
        return userdb;
    }

    public void setUserdb(String userdb) {
        this.userdb = userdb;
    }

    public String getPasswddb() {
        return passwddb;
    }

    public void setPasswddb(String passwddb) {
        this.passwddb = passwddb;
    }
 
   
}
