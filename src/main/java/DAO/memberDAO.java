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
	private String url = "jdbc:mysql://127.0.0.1:3306/jsp_project?serverTimezone=UTC&useSSL=false";
	private String dbID = "root";
	private String dbPW = "1234";

	Connection con = null;

	public memberDAO() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, dbID, dbPW);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public boolean memberSelect(String input_id, String input_pw) {// 로그인
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT member_pw FROM jsp_member where member_id=?";

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

	public void memberInsert(String input_name, String input_id, String input_pw, String input_address) {//회원가입
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "INSERT into jsp_member(member_name, member_id, member_pw, member_address) values(?,?,?,?)";
		try {
			pstmt = con.prepareStatement(SQL);
			pstmt.setString(1, input_name);
			pstmt.setString(2, input_id);
			pstmt.setString(3, input_pw);
			pstmt.setString(4, input_address);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

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
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		boolean result=false;
		String dbpw="";
		
		try {
		String SQL="SELECT member_pw from jsp_member where member_id=?";
			pstmt=con.prepareStatement(SQL);
			pstmt.setString(1,  input_id);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				dbpw=rs.getString("member_pw");
				if(dbpw.equals(input_pw)) {
					String DELSQL="DELETE FROM jsp_member where member_id=?";
					pstmt=con.prepareStatement(DELSQL);
					pstmt.setString(1,  input_id);
					pstmt.executeUpdate();
					result=true;
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}return result;
	}
	
	public void memberUpdate(String input_name, String input_id, String input_pw, String input_address) {// 전체수정
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "UPDATE FROM jsp_member SET member_name=?, member_pw=?, member_address=?, where member_id=?";

		try {
			pstmt = con.prepareStatement(SQL);
			pstmt.setString(1, input_name);
			pstmt.setString(2, input_pw);
			pstmt.setString(3, input_address);
			pstmt.setString(4, input_id);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

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
	
	public void memberInfo(String input_id) {//상세정보
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