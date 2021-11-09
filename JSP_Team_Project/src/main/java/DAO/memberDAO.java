package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import DTO.memberDTO;

public class memberDAO {
<<<<<<< HEAD:src/main/java/DAO/memberDAO.java
	private String url = "jdbc:mysql://127.0.0.1:3306/jsp_project?serverTimezone=UTC&useSSL=false";
	private String dbID = "root";
	private String dbPW = "1234";

	Connection con = null;

=======
	private String url="jdbc:mysql://127.0.0.1:3306/jsp_project?serverTimezone=UTC&useSSL=false";
	private String dbID="root";
	private String dbPW="1234";
	
	Connection con=null;
	
>>>>>>> parent of 93c5fc6 (회원가입 추가 및 한글패치):JSP_Team_Project/src/main/java/DAO/memberDAO.java
	public memberDAO() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, dbID, dbPW);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
<<<<<<< HEAD:src/main/java/DAO/memberDAO.java

	public boolean memberSelect(String input_id, String input_pw) {// 로그인
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT member_pw FROM jsp_member where member_id=?";

=======
	
	public boolean memberSelect(String input_id, String input_pw) {//�α���
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String SQL="SELECT member_pw FROM jsp_member where member_id=?";
		
>>>>>>> parent of 93c5fc6 (회원가입 추가 및 한글패치):JSP_Team_Project/src/main/java/DAO/memberDAO.java
		try {
			pstmt = con.prepareStatement(SQL);
			pstmt.setString(1, input_id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				String member_pw = rs.getString("member_pw");
				if (member_pw.equals(input_pw) == true) {
					return true;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;

	}

<<<<<<< HEAD:src/main/java/DAO/memberDAO.java
	public void memberInsert(String input_name, String input_id, String input_pw, String input_address) {// ȸ������
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "INSERT into jsp_member(member_name, member_id, member_pw, member_address) values(?,?,?,?)";
		try {
			pstmt = con.prepareStatement(SQL);
=======
	public int memberInsert(String input_name, String input_id, String input_pw, String input_address) {//ȸ������
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String SQl="INSERT jsp_member(member_name, member_id, member_pw, member_address) values(?,?,?,?)";
		try {
			pstmt=con.prepareStatement(SQl);
>>>>>>> parent of 93c5fc6 (회원가입 추가 및 한글패치):JSP_Team_Project/src/main/java/DAO/memberDAO.java
			pstmt.setString(1, input_name);
			pstmt.setString(2, input_id);
			pstmt.setString(3, input_pw);
			pstmt.setString(4, input_address);
<<<<<<< HEAD:src/main/java/DAO/memberDAO.java
			pstmt.executeUpdate();
		} catch (SQLException e) {
=======
			return pstmt.executeUpdate();
		}catch(SQLException e) {
>>>>>>> parent of 93c5fc6 (회원가입 추가 및 한글패치):JSP_Team_Project/src/main/java/DAO/memberDAO.java
			e.printStackTrace();
		}return -1;
	}
<<<<<<< HEAD:src/main/java/DAO/memberDAO.java

	public boolean checkDuplicateID(String input_id) {// 아이디 중복체크
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT*FROM jsp_member where member_id=?";

		try {
			pstmt = con.prepareStatement(SQL);
			pstmt.setString(1, input_id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				String member_id = rs.getString("member_id");
				if (member_id.equals(input_id) == true) {
					System.out.printf("%s: 아이디 존재!\n", input_id);
					return false;
				}

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return true;
	}

	public boolean memberDelete(String input_id, String input_pw) {//회원탈퇴
=======
	
	public boolean checkDuplicateID(String input_id) {//���̵� �ߺ�üũ
>>>>>>> parent of 93c5fc6 (회원가입 추가 및 한글패치):JSP_Team_Project/src/main/java/DAO/memberDAO.java
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		boolean result=false;
		String dbpw="";
		
		try {
		String SQL="SELECT mamber_pw from jsp_member where member_id=?";
			pstmt=con.prepareStatement(SQL);
			pstmt.setString(1,  input_id);
			rs=pstmt.executeQuery();
			
<<<<<<< HEAD:src/main/java/DAO/memberDAO.java
			if(rs.next()) {
				dbpw=rs.getString("member_pw");
				if(dbpw.equals(input_pw)) {
					String DELSQL="DELETE FROM jsp_member where member_id=?";
					pstmt=con.prepareStatement(DELSQL);
					pstmt.setString(1,  input_id);
					pstmt.executeUpdate();
					result=true;
=======
			while(rs.next()) {
				String member_id = rs.getString("member_id");
				if(member_id.equals(input_id)==true) {
				System.out.printf("%s: ���̵� ����!\n", input_id);
				return false;
>>>>>>> parent of 93c5fc6 (회원가입 추가 및 한글패치):JSP_Team_Project/src/main/java/DAO/memberDAO.java
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}return result;
	}

	public void memberUpdateId(String input_id) {// 아이디수정
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "UPDATE FROM jsp_member where member_id=?";

		try {
			pstmt = con.prepareStatement(SQL);
			pstmt.setString(1, input_id);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void memberUpdatePw(String input_pw) {//비밀번호수정
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String SQL="UPDATE FROM jsp_member where member_pw=?";
		
		try {
			pstmt=con.prepareStatement(SQL);
			pstmt.setString(1,  input_pw);
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	public void memberUpdateName(String input_name) {//이름수정
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String SQL="UPDATE FROM jsp_member where member_name=?";
			
		try {
			pstmt=con.prepareStatement(SQL);
			pstmt.setString(1,  input_name);
			pstmt.executeUpdate();
		}catch(Exception e) {
				e.printStackTrace();
		}
	}
	
	public void memberUpdateAddress(String input_address) {//주소수정
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String SQL="UPDATE FROM jsp_member where member_address=?";
			
		try {
			pstmt=con.prepareStatement(SQL);
			pstmt.setString(1,  input_address);
			pstmt.executeUpdate();
		}catch(Exception e) {
				e.printStackTrace();
		}
	}
	
	public void memgerInfo(String input_id) {//상세정보
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String SQL="SELECT*FROM jsp_member where member_id=?";
			
		try {
			pstmt=con.prepareStatement(SQL);
			pstmt.setString(1,  input_id);
			rs=pstmt.executeQuery();
		}catch(Exception e) {
				e.printStackTrace();
		}
		
	}

}