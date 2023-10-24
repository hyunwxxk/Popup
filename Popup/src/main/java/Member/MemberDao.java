package Member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDao {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	public static MemberDao instance = new MemberDao();
	
	public static MemberDao getInstance() {
		return instance;
	}
	
	private MemberDao() {
		
	}
	
	private Connection getConnection() throws Exception{
		Context initContext = new InitialContext();
		Context envContext = (Context)initContext.lookup("java:comp/env");
		DataSource ds = (DataSource)envContext.lookup("jdbc/OracleDB");
		conn = ds.getConnection();
		System.out.println("conn:"+conn);
		return conn;
	}
	
	public MemberBean getMemberInfo(String id, String password) throws Exception{
		conn = getConnection();
		MemberBean mb = null;
		String sql = "select * from member where id=? and password=?";
		ps = conn.prepareStatement(sql);
		ps.setString(1, id);
		ps.setString(2, password);
		
		rs = ps.executeQuery();
		if(rs.next()) {
			mb = getMemberBean(rs);
		}
		return mb;
	}
	
	public MemberBean getMemberBean(ResultSet rs) throws Exception{
		MemberBean mb = new MemberBean();
		mb.setNo(rs.getInt("no"));
		mb.setName(rs.getString("name"));
		mb.setId(rs.getString("id"));
		mb.setPassword(rs.getString("password"));
		mb.setSsn1(rs.getString("ssn1"));
		mb.setSsn2(rs.getString("ssn2"));
		mb.setEmail(rs.getString("email"));
		mb.setHp1(rs.getString("hp1"));
		mb.setHp2(rs.getString("hp2"));
		mb.setHp3(rs.getString("hp3"));
		mb.setPurpose(rs.getString("purpose"));
		
		return mb;
	}
	
	public int insertMember(MemberBean mb) throws Exception{
		conn = getConnection();
		int cnt = -1;
		String sql = "insert into Member values(memseq.nextval,?,?,?,?,?,?,?,?,?,?)";
		
		ps = conn.prepareStatement(sql);
		ps.setString(1, mb.getName());
		ps.setString(2, mb.getId());
		ps.setString(3, mb.getPassword());
		ps.setString(4, mb.getSsn1());
		ps.setString(5, mb.getSsn2());
		ps.setString(6, mb.getEmail());
		ps.setString(7, mb.getHp1());
		ps.setString(8, mb.getHp2());
		ps.setString(9, mb.getHp3());
		ps.setString(10, mb.getPurpose());
		
		cnt = ps.executeUpdate();
		
		System.out.println("insert cnt : " + cnt);
		return cnt;
	}
	
	
	
}
