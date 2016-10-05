package com.segurosbolivar.avaluos.util;

import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.sql.DataSource;

public class UtilJpa {	
	
	public static final String DATASOURCE = "jdbc/avaluosDS";

	public static synchronized Long returnSequenceFromSQL(String sql,Connection con) throws Exception {
		PreparedStatement pst = con.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		Long myId = null;

		if (rs.next())
			myId = rs.getLong(1);
		return myId;
	}

	public static synchronized Integer returnUpdateFromSQL(String sql,Connection con) throws Exception {
		PreparedStatement pst = con.prepareStatement(sql);
		int i = pst.executeUpdate();
		return i;
	}

	public static synchronized BigDecimal getMaxTableValue(String nomTabla,
			String campoId) throws Exception {

		// Connection con = Util.getConnFromDs("jdbc/avaluosDS");
		Connection con = null;
		BigDecimal seq = null;
		PreparedStatement pst = null;
		CallableStatement cst = null;
		Statement stm = null;
		try {
			Context ctx = new InitialContext();
			DataSource dataSource = (DataSource) ctx.lookup(DATASOURCE);
			con = dataSource.getConnection();

			BigDecimal id = new BigDecimal(returnSequenceFromSQL("SELECT max("+ campoId + ") FROM " + nomTabla + "", con));

			try {
				con.close();
			} catch (Exception e1) {
				System.out.println("Error cerrando la conexion en el flujo principal. tal vez ya esta cerrada");
				e1.printStackTrace();
			}
			return id;
		} catch (Exception e) {
			e.printStackTrace();
			try {
				con.close();
			} catch (Exception ex2) {
				// e1.printStackTrace();
				System.out.println("Error cerrando la conexion en el catch principal. tal vez ya esta cerrada");
			}
			throw new RuntimeException("Error trayendo el maximo id " + campoId+ " de la tabla " + nomTabla, e);
		}

	}

	public static synchronized BigDecimal alterSequenceTable(BigDecimal newSeq, String nomSequenceTable) throws Exception {
		// Connection con = Util.getConnFromDs("jdbc/avaluosDS");
		Connection con = null;
		BigDecimal seq = null;
		PreparedStatement pst = null;
		CallableStatement cst = null;
		Statement stm = null;
		try {
			Context ctx = new InitialContext();
			DataSource dataSource = (DataSource) ctx.lookup(DATASOURCE);
			con = dataSource.getConnection();

			seq = new BigDecimal(returnSequenceFromSQL("select t.seq_count from sequence t where t.seq_name = '"+ nomSequenceTable+ "'", con));

			BigDecimal id = newSeq;

			if (seq.compareTo(id) <= 0) {
				BigDecimal resta = id.subtract(seq);
					// Connection con=null;
					returnUpdateFromSQL("UPDATE SEQUENCE t SET t.seq_count = "+id.add(new BigDecimal("1"))+" WHERE t.seq_name = '"+ nomSequenceTable +"'", con);
					con.commit();
					return id.add(new BigDecimal("1"));
			}
			try {
				con.close();
			} catch (Exception e1) {
				System.out
						.println("Error cerrando la conexion en el flujo principal. tal vez ya esta cerrada");
				e1.printStackTrace();
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}	
		return seq;
	}
	
	public static synchronized BigDecimal getAlterSequenceValueMaxTable(BigDecimal maxTable, String nomSequence) throws Exception {
		// Connection con = Util.getConnFromDs("jdbc/avaluosDS");
		Connection con = null;
		BigDecimal seq = null;
		PreparedStatement pst = null;
		CallableStatement cst = null;
		Statement stm = null;
		try {
			Context ctx = new InitialContext();
			DataSource dataSource = (DataSource) ctx.lookup(DATASOURCE);
			con = dataSource.getConnection();

			seq = new BigDecimal(returnSequenceFromSQL("SELECT " + nomSequence+ ".nextval FROM DUAL", con));

			BigDecimal id = maxTable;

			if (seq.compareTo(id) <= 0) {
				BigDecimal resta = id.subtract(seq);
				if (!resta.equals(0)) {
					// Connection con=null;
					returnUpdateFromSQL(("ALTER SEQUENCE avaluos." + nomSequence+ "  increment by " + resta), con);
					seq = new BigDecimal(returnSequenceFromSQL("SELECT "+ nomSequence + ".nextval FROM DUAL", con));
					returnUpdateFromSQL("ALTER SEQUENCE avaluos." + nomSequence+ "  increment by 1", con);
					seq = new BigDecimal(returnSequenceFromSQL("SELECT "+ nomSequence + ".nextval FROM DUAL", con));
				} else {
					seq = new BigDecimal(returnSequenceFromSQL("SELECT "+ nomSequence + ".nextval FROM DUAL", con));
				}
			}
			try {
				con.close();
			} catch (Exception e1) {
				System.out
						.println("Error cerrando la conexion en el flujo principal. tal vez ya esta cerrada");
				e1.printStackTrace();
			}
			return seq;
		} catch (Exception e) {
			e.printStackTrace();
			try {
				returnUpdateFromSQL("ALTER SEQUENCE avaluos." + nomSequence+ "  increment by 1", con);
				seq = new BigDecimal(returnSequenceFromSQL("SELECT "+ nomSequence + ".nextval FROM DUAL", con));
			} catch (Exception e2) {
				try {
					con.close();
				} catch (Exception ex1) {
					// e1.printStackTrace();
					System.out.println("Error cerrando la conexion en el catch de restaurar la secuencia.. tal vez ya esta cerrada");
				}
				throw new RuntimeException("Error restaurando la sequencia "+ nomSequence + " a 1", e);
			}
			try {
				con.close();
			} catch (Exception ex2) {
				// e1.printStackTrace();
				System.out.println("Error cerrando la conexion en el catch principal. tal vez ya esta cerrada");
			}
			throw new RuntimeException("Error trayendo el valor de la sequencia " + nomSequence, e);
		}

	}
	
	@Deprecated
	public static synchronized BigDecimal getSequenceValue(String nomTabla,String campoId, String nomSequence) throws Exception {
		// Connection con = Util.getConnFromDs("jdbc/avaluosDS");
		Connection con = null;
		BigDecimal seq = null;
		PreparedStatement pst = null;
		CallableStatement cst = null;
		Statement stm = null;
		try {
			Context ctx = new InitialContext();
			DataSource dataSource = (DataSource) ctx.lookup(DATASOURCE);
			con = dataSource.getConnection();

			seq = new BigDecimal(returnSequenceFromSQL("SELECT " + nomSequence+ ".nextval FROM DUAL", con));

			BigDecimal id = new BigDecimal(returnSequenceFromSQL("SELECT max("+ campoId + ") FROM " + nomTabla + "", con));

			if (seq.compareTo(id) <= 0) {
				BigDecimal resta = id.subtract(seq);
				if (!resta.equals(0)) {
					// Connection con=null;
					returnUpdateFromSQL(("ALTER SEQUENCE avaluos." + nomSequence+ "  increment by " + resta), con);
					seq = new BigDecimal(returnSequenceFromSQL("SELECT "+ nomSequence + ".nextval FROM DUAL", con));
					returnUpdateFromSQL("ALTER SEQUENCE avaluos." + nomSequence+ "  increment by 1", con);
					seq = new BigDecimal(returnSequenceFromSQL("SELECT "+ nomSequence + ".nextval FROM DUAL", con));
				} else {
					seq = new BigDecimal(returnSequenceFromSQL("SELECT "+ nomSequence + ".nextval FROM DUAL", con));
				}
			}
			try {
				con.close();
			} catch (Exception e1) {
				System.out.println("Error cerrando la conexion en el flujo principal. tal vez ya esta cerrada");
				e1.printStackTrace();
			}
			return seq;
		} catch (Exception e) {
			e.printStackTrace();
			try {
				returnUpdateFromSQL("ALTER SEQUENCE avaluos." + nomSequence+ "  increment by 1", con);
				seq = new BigDecimal(returnSequenceFromSQL("SELECT "+ nomSequence + ".nextval FROM DUAL", con));
			} catch (Exception e2) {
				try {
					con.close();
				} catch (Exception ex1) {
					// e1.printStackTrace();
					System.out.println("Error cerrando la conexion en el catch de restaurar la secuencia.. tal vez ya esta cerrada");
				}
				throw new RuntimeException("Error restaurando la sequencia "+ nomSequence + " a 1", e);
			}
			try {
				con.close();
			} catch (Exception ex2) {
				// e1.printStackTrace();
				System.out.println("Error cerrando la conexion en el catch principal. tal vez ya esta cerrada");
			}
			throw new RuntimeException("Error trayendo el valor de la sequencia " + nomSequence+ " o el maximo id " + campoId + " de la tabla " + nomTabla, e);
		}

	}

}
