package _00_init.lucene;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.Field.Store;
import org.apache.lucene.document.TextField;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.apache.lucene.util.Version;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.web.store.dao.ProductDao;
import com.web.store.dao.impl.ProductDaoImpl;
import com.web.store.model.ProductBean;
import com.web.store.service.ProductService;

import _00_init.util.HibernateUtils;

/**
 * 
 * TODO 索引文件
 * 
 * @author Snaiclimb
 * @date 2018年3月30日
 * @version 1.8
 */
public class Indexer {
	/**
	 * 创建索引功能的测试
	 * 
	 * @throws Exception
	 */

	public Indexer(ProductService service) {
		this.service = service;
	}

	ProductService service;

	public void createIndex() throws IOException {
		// 1. 采集数据

		List<ProductBean> products = service.getAllProducts();

		// 2. 创建文档对象
		List<Document> documents = new ArrayList<Document>();
		for (ProductBean product : products) {
			Document document = new Document();
			// 给文档对象添加域
			// add方法: 把域添加到文档对象中, field参数: 要添加的域
			// TextField: 文本域, 属性name:域的名称, value:域的值, store:指定是否将域值保存到文档中
			document.add(new TextField("pId", product.getpId() + "", Store.YES));
			document.add(new TextField("pname", product.getPname(), Store.YES));
			document.add(new TextField("price", product.getPrice() + "", Store.YES));
			document.add(new TextField("vId", product.getvId() + "", Store.YES));
			document.add(new TextField("ammount", product.getAmount() + "", Store.YES));
			document.add(new TextField("category", product.getCategory(), Store.YES));
			document.add(new TextField("sdate", product.getSdate() + "", Store.YES));
			document.add(new TextField("sdate", product.getExpdate() + "", Store.YES));
			document.add(new TextField("rankSum", product.getRankSum() + "", Store.YES));
			document.add(new TextField("rankCount", product.getRankCount() + "", Store.YES));

			// 将文档对象添加到文档对象集合中
			documents.add(document);
		}
		// 3. 创建分析器对象(Analyzer), 用于分词
		Analyzer analyzer = new StandardAnalyzer();
		// 4. 创建索引配置对象(IndexWriterConfig), 用于配置Lucene
		// 参数一:当前使用的Lucene版本, 参数二:分析器
		IndexWriterConfig indexConfig = new IndexWriterConfig(Version.LUCENE_4_10_2, analyzer);
		// 5. 创建索引库目录位置对象(Directory), 指定索引库的存储位置
		File path = new File("F:\\lucene\\index");
		Directory directory = FSDirectory.open(path);
		// 6. 创建索引写入对象(IndexWriter), 将文档对象写入索引
		IndexWriter indexWriter = new IndexWriter(directory, indexConfig);
		// 7. 使用IndexWriter对象创建索引
		for (Document doc : documents) {
			// addDocement(doc): 将文档对象写入索引库
			indexWriter.addDocument(doc);
		}
		// 8. 释放资源
		indexWriter.close();
	}


}
