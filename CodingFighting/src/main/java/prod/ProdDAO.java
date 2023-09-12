package prod;

import java.io.FileReader;
import java.net.URLDecoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import user.UserDTO;

public class ProdDAO {
	private Connection conn = getConnect();

//   싱글턴 패턴
	private static ProdDAO dao = new ProdDAO();

	private ProdDAO() {
	}

	public static ProdDAO getInstance() {
		return dao;
	}

	public List<ProdDTO> lst;

//   oracle데이터베이스에 접속
	private Connection getConnect() {
		try {
			Properties prop = new Properties();
			String path = ProdDAO.class.getResource("db.properties").getPath();

			path = URLDecoder.decode(path, "utf-8");
			prop.load(new FileReader(path));

			String driver = prop.getProperty("driver");
			String url = prop.getProperty("url");
			String user = prop.getProperty("user");
			String pw = prop.getProperty("pw");

			Class.forName(driver);
			Connection conn = DriverManager.getConnection(url, user, pw);
			return conn;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public int insertProd(ProdDTO prod) {
		String sql = "insert into Prod(maker, prodname, discrip, amount, price, cate, FileFullPath, FileName ) "
				+ "values (?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, prod.getMaker());
			pstm.setString(2, prod.getProdName());
			pstm.setString(3, prod.getDiscrip());
			pstm.setInt(4, prod.getAmount());
			pstm.setInt(5, prod.getPrice());
			pstm.setString(6, prod.getCate());
			pstm.setString(7, prod.getFileFullPath());
			pstm.setString(8, prod.getFileName());
			// pstm.setInt(8, prod.getNum());
			int res = pstm.executeUpdate();
			pstm.close();
			return res;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public ProdDTO getNum(int num) {
		ProdDTO dto = null;
		String SQL = "select * from prod where num = ?";
		try {
			PreparedStatement pstm = conn.prepareStatement(SQL);
			pstm.setInt(1, num);
			ResultSet rs = pstm.executeQuery();

			if (rs.next()) {
				dto = new ProdDTO();
				dto.setMaker(rs.getString("maker"));
				dto.setProdName(rs.getString("prodName"));
				dto.setDiscrip(rs.getString("discrip"));
				dto.setAmount(rs.getInt("amount"));
				dto.setPrice(rs.getInt("price"));
				dto.setCate(rs.getString("cate"));
				dto.setNum(rs.getInt("num"));

				System.out.println("상품정보 저장 완료");
			}
			System.out.println("sql구문 실행완료");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}

	public ProdDTO prodByName(String pordName) {
		ProdDTO dto = null;
		String sql = "select * from prod where prodName = ?";
		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, pordName);
			ResultSet rs = pstm.executeQuery();
			if (rs.next()) {
				dto = new ProdDTO();
				dto.setMaker(rs.getString("maker"));
				dto.setProdName(rs.getString("prodName"));
				dto.setPrice(rs.getInt("price"));
				dto.setNum(rs.getInt("num"));
				System.out.println("회원정보 저장 완료");
			}
		} catch (

		SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}

	public List<ProdDTO> selectProdAll() {
		lst = new ArrayList<>();
		String sql = "select * from prod";

		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {

				String maker = rs.getString("maker");
				String prodName = rs.getString("prodname");
				String discrip = rs.getString("discrip");
				int amount = rs.getInt("amount");
				int price = rs.getInt("price");
				String cate = rs.getString("cate");
				int num = rs.getInt("num");
				String fileFullPath = rs.getString("fileFullPath");
				String fileName = rs.getString("fileName");

				ProdDTO prod = new ProdDTO(maker, prodName, discrip, amount, price, cate, num, fileFullPath, fileName);
				lst.add(prod);

			}
			pstmt.close();
			rs.close();
			return lst;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}

	public ProdDTO selectProduct(int num) {
		String sql = "select maker, prodname, discrip, amount, " + " price, cate, num, fileFullPath, fileName "
				+ " from prod where num = ?";
		ProdDTO prod = null;
		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, num);
			ResultSet rs = pstm.executeQuery();
			if (rs.next()) {
				String maker = rs.getString("maker");
				String prodname = rs.getString("prodname");
				String discrip = rs.getString("discrip");
				int amount = rs.getInt("amount");
				int price = rs.getInt("price");
				String cate = rs.getString("cate");
				int pnum = rs.getInt("num");
				String fileFullPath = rs.getString("fileFullPath");
				String fileName = rs.getString("fileName");
				prod = new ProdDTO(maker, prodname, discrip, amount, price, cate, pnum, fileFullPath, fileName);
			}
			rs.close();
			pstm.close();
			return prod;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public List<ProdDTO> selectProdDetailCate(String scanCate, String pName, int minPrice, int maxPrice) {

		lst = new ArrayList<>();
		String sql = "select * from prod where cate = ? " + " and prodname like  '%' || ? || '%'"
				+ " and price between ? and ?";

		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, scanCate);
			pstm.setString(2, pName);
			pstm.setInt(3, minPrice);
			pstm.setInt(4, maxPrice);
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {

				String maker = rs.getString("maker");
				String prodName = rs.getString("prodname");
				String discrip = rs.getString("discrip");
				int amount = rs.getInt("amount");
				int price = rs.getInt("price");
				String cate = rs.getString("cate");
				int num = rs.getInt("num");
				String fileFullPath = rs.getString("fileFullPath");
				String fileName = rs.getString("fileName");

				ProdDTO prod = new ProdDTO(maker, prodName, discrip, amount, price, cate, num, fileFullPath, fileName);
				lst.add(prod);

			}
			pstm.close();
			rs.close();
			return lst;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}

	public int deleteProduct(int num) {
		String sql = "delete from Prod where num = ?";
		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, num);
			int res = pstm.executeUpdate();
			pstm.close();
			return res;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public List<ProdDTO> selectProdCate(String inpcate) {
		lst = new ArrayList<>();
		String sql = "select * from prod where cate = ?";

		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, inpcate);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {

				String maker = rs.getString("maker");
				String prodName = rs.getString("prodname");
				String discrip = rs.getString("discrip");
				int amount = rs.getInt("amount");
				int price = rs.getInt("price");
				String cate = rs.getString("cate");
				int num = rs.getInt("num");
				String fileFullPath = rs.getString("fileFullPath");
				String fileName = rs.getString("fileName");

				ProdDTO prod = new ProdDTO(maker, prodName, discrip, amount, price, cate, num, fileFullPath, fileName);
				lst.add(prod);

			}
			pstmt.close();
			rs.close();
			return lst;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}

	// getBoardList(startRow, pageSize)
	public List getBoardList(int startRow, int pageSize) {
		List<ProdDTO> lst = new ArrayList<>();

		try {

//					sql = "select * from prod order by re_ref desc, re_seq asc limit ?,?";			
			String sql = "";

			PreparedStatement pstmt = conn.prepareStatement(sql);

			// ?
			pstmt.setInt(1, startRow - 1); // 시작행-1 (시작 row 인덱스 번호)
			pstmt.setInt(2, pageSize); // 페이지크기 (한번에 출력되는 수)

			// 4. sql 실행
			ResultSet rs = pstmt.executeQuery();
			// 5. 데이터처리 ( 글1개의 정보 -> DTO 1개에 담음 -> ArrayList 1칸 )
			while (rs.next()) {
				// 데이터가 있을때마다 글 1개의 정보를 저장하는 객체 생성
				ProdDTO pdt = new ProdDTO();

				pdt.setMaker(rs.getString("maker"));
				pdt.setProdName(rs.getString("prodname"));
				pdt.setDiscrip(rs.getString("discrip"));
				pdt.setAmount(rs.getInt("amount"));
				pdt.setPrice(rs.getInt("price"));
				pdt.setCate(rs.getString("cate"));
				pdt.setNum(rs.getInt("num"));
				pdt.setFileFullPath(rs.getString("filefullpath"));
				pdt.setFileName(rs.getString("filename"));

				// DTO 객체를 ArrayList 한칸에 저장
				lst.add(pdt);
			}
			pstmt.close();
			rs.close();
			System.out.println("DAO : 글 정보 저장완료! " + lst.size());

		} catch (Exception e) {
			e.printStackTrace();
		}
		return lst;
	}

	// getBoardList(startRow, pageSize) 끝
	public static void main(String[] args) {
		ProdDAO dao = getInstance();

//      List<Product> plst = dao.selectProdAll();
//      
//      for (Product product : plst) {
//         System.out.println(product);
//      }

		ProdDTO prod = dao.selectProduct(1);
		System.out.println(prod);

	}
}