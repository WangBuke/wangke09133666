package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;



import util.DBUtil;

import bean.Guitar;

public class guitarDaoImpl implements guitarDao

{

	@Override
	public void Find(Guitar u) {
		
	}	
	// ��������
	public ArrayList<Guitar> getAllGuitar(){
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		
		try {
			DBUtil util=new DBUtil();
			conn=util.getConnection();
			String sql = "select * from guitar"; // SQL���
			stmt = conn.prepareStatement(sql);
			ArrayList<Guitar> list = new ArrayList<Guitar>(); // ���ۼ���
			rs = stmt.executeQuery();
			while (rs.next()) {
				
				Guitar  c= new Guitar();
				c.setBuilder(rs.getString("builder"));
				c.setType(rs.getString("type"));
				c.setModel(rs.getString("model"));
				c.setTopwood(rs.getString("topwood"));
				c.setBackwood(rs.getString("backwood"));
				c.setPrice(rs.getDouble("price"));
				c.setSerialNumber(rs.getInt("serialNumber"));
				
				list.add(c);// ��һ����Ʒ���뼯��
			}
			return list; // ���ؼ��ϡ�
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		} finally {
			// �ͷ����ݼ�����
			if (rs != null) {
				try {
					rs.close();
					rs = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
			// �ͷ�������
			if (stmt != null) {
				try {
					stmt.close();
					stmt = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
		}	
	}
}
