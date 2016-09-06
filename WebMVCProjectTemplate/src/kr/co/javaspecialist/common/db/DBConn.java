package kr.co.javaspecialist.common.db;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBConn {
	public static Connection getConnection() {
	    DataSource ds = null; //javax.sql.DataSource
	    Connection con = null;
	    try{
	        Context ctx = new InitialContext();
	        ds = (DataSource)ctx.lookup("java:comp/env/jdbc/Oracle");
	        con = ds.getConnection();
	    }catch(Exception e){
	        e.printStackTrace();
	    }
	    return con;
	}

	public static void closeConnection(Connection con) {
	    if(con!=null) {
	        try { con.close(); }catch(Exception e) {  }
	    }
	}//end closeConnection
}
