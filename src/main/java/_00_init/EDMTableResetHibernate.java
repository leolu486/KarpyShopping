package _00_init;

/*  
    程式說明：建立表格與設定初始測試資料。
    表格包括：Book, BookCompany, Member, Orders, OrderItems
 
*/
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Blob;
import java.sql.Clob;

import org.apache.commons.io.FileUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.web.store.model.ManagerBean;
import com.web.store.model.MemberBean;
import com.web.store.model.ProductBean;
import com.web.store.model.VendorBean;

import _00_init.util.GlobalService;
import _00_init.util.HibernateUtils;

public class EDMTableResetHibernate {
	public static final String UTF8_BOM = "\uFEFF"; // 定義 UTF-8的BOM字元

	public static void main(String args[]) {

		String line = "";

		int count = 0;
		SessionFactory factory = HibernateUtils.getSessionFactory();
		Session session = factory.getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();

			// 1. 由"data/manager.txt"逐筆讀入Manager表格內的初始資料，
			// 然後依序新增到Manager表格中
			try (FileReader fr = new FileReader("data/manager.txt"); BufferedReader br = new BufferedReader(fr);) {
				while ((line = br.readLine()) != null) {
					if (line.startsWith(UTF8_BOM)) {
						line = line.substring(1);
					}
					String[] token = line.split("\\|");
					String account = token[0];
					String password = GlobalService.getMD5Endocing(GlobalService.encryptString(token[1]));
					String name = token[2];

					ManagerBean mb = new ManagerBean(null, account, password, name);
					session.save(mb);
				}
			} catch (IOException e) {
				System.err.println("新建Manager表格時發生IO例外: " + e.getMessage());
			}
			session.flush();
			System.out.println("Manager 資料新增成功");

//			// ------------
			// 1. 由"data/vendor.txt"逐筆讀入Vendor表格內的初始資料，
			// 然後依序新增到Vendor表格中
			try (FileReader fr = new FileReader("data/vendor.txt"); BufferedReader br = new BufferedReader(fr);) {
				while ((line = br.readLine()) != null) {
					if (line.startsWith(UTF8_BOM)) {
						line = line.substring(1);
					}
					System.out.println(line);
					String[] token = line.split("\\|");
					String vname = token[0];
					String addr = token[1];
					String tel = token[2];
					String email = token[3];

					VendorBean vb = new VendorBean(null, vname, addr, tel, email);
					session.save(vb);
				}
			} catch (IOException e) {
				System.err.println("新建Vendor表格時發生IO例外: " + e.getMessage());
			}
			session.flush();
			System.out.println("Vendor 資料新增成功");

//				----------------------products data insert----------------------------
			try (FileReader fr = new FileReader("data/products.txt"); BufferedReader br = new BufferedReader(fr);) {
				while ((line = br.readLine()) != null) {
					if (line.startsWith(UTF8_BOM)) {
						line = line.substring(1);
					}

					System.out.println(line.replace("'", ""));
					String[] token = line.replace("'", "").split(",");
					String pname = token[0].trim();
					System.out.println(token[1]);
					Integer price = Integer.parseInt(token[1].trim());
					
					Integer vId = Integer.parseInt(token[2].trim());
					Integer amount = Integer.parseInt(token[3].trim());
					String category = token[4].trim();
					String sdate = token[5].trim();
					String expdate = token[6].trim();
					System.out.println("\\"+token[7].trim()+"\\");
					File file1 = new File(token[7].trim());
					System.out.println("\\"+token[8].trim()+"\\");
					File file2 = new File(token[8].trim());
					String detail = token[9].trim();
					Double rankSum = null;
					Integer rankCount = null;
					System.out.println(expdate);
					ProductBean pb;

					if (!expdate.equals("null")) {
						System.out.println("not null");
						pb = new ProductBean(null, pname, price, vId, amount, category, sdate, expdate, rankSum,
								rankCount, file1, file2, detail);
					} else {
						System.out.println("is null");
						pb = new ProductBean(null, pname, price, vId, amount, category, sdate, rankSum, rankCount, file1, file2, detail);
					}
					
					VendorBean vb = session.get(VendorBean.class, pb.getvId());
					pb.setVendorBean(vb);

					session.save(pb);
				}
			} catch (IOException e) {
				System.err.println("新建Product表格時發生IO例外: " + e.getMessage());
			}
			session.flush();
			System.out.println("Product 資料新增成功");

		// ------------

			tx.commit();
		} catch (Exception e) {
			System.err.println("新建表格時發生例外: " + e.getMessage());
			e.printStackTrace();
			tx.rollback();
		}
		factory.close();
	}

}