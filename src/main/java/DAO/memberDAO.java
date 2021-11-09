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
	private String url="jdbc:mysql://127.0.0.1:3306/jsp_project?serverTimezone=UTC&useSSL=false&useUnicode=true&characterEncoding=utf8";
	private String dbID="root";
	private String dbPW="1234";
	
	Connection con=null;
	
	public memberDAO() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url,dbID,dbPW);
		} catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public boolean memberSelect(String input_id, String input_pw) {//�α���
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String SQL="SELECT member_pw FROM jsp_member where member_id=?";
		
		try {
			pstmt=con.prepareStatement(SQL);
			pstmt.setString(1, input_id);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				String member_pw = rs.getString("member_pw");
				if(member_pw.equals(input_pw)==true) {
					return true;
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
		
	}

	public void memberInsert(String input_name, String input_id, String input_pw, String input_address) {//ȸ������
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String SQL="INSERT into jsp_member(member_name, member_id, member_pw, member_address) values(?,?,?,?)";
		try {
			pstmt=con.prepareStatement(SQL);
			pstmt.setString(1, input_name);
			pstmt.setString(2, input_id);
			pstmt.setString(3, input_pw);
			pstmt.setString(4, input_address);
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public boolean checkDuplicateID(String input_id) {//���̵� �ߺ�üũ
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String SQL="SELECT*FROM jsp_member where member_id=?";
		
		try {
			pstmt=con.prepareStatement(SQL);
			pstmt.setString(1,  input_id);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				String member_id = rs.getString("member_id");
				if(member_id.equals(input_id)==true) {
				System.out.printf("%s: ���̵� ����!\n", input_id);
				return false;
				}
			
			}
		}catch(Exception e) {
			e.printStackTrace();
		}return true;
	}
	


	
	
}
