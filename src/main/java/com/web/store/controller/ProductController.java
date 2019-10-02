package com.web.store.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.web.store.exception.ManagerNotFoundException;
import com.web.store.exception.ProductNotFoundException;
import com.web.store.model.ManagerBean;
import com.web.store.model.MemberBean;
import com.web.store.model.ProductBean;
import com.web.store.service.HotSearchService;
import com.web.store.service.ManagerService;
import com.web.store.service.ProductService;

import _00_init.util.SystemUtils2019;

@Controller
public class ProductController {
	@Autowired
	ProductService service;
	@Autowired
	HotSearchService hService;
	
	Integer countPerPage = 5;

//	@ExceptionHandler({ ProductNotFoundException.class })
//	public ModelAndView handleError(HttpServletRequest request, ProductNotFoundException exception) {
//		ModelAndView mv = new ModelAndView();
////		mv.addObject("invalidAccount", exception.getAccount());
//		mv.addObject("exception", exception);
//		mv.addObject("errorMessage", exception.getMessage());
//		// 查詢單一管理員發生例外
//		if (request.getRequestURI().equalsIgnoreCase("/KarpyShopping/manager")) {
//			mv.addObject("url", request.getRequestURL() + "?" + request.getQueryString());
//			mv.setViewName("errorPage/managerNotFound");
//		}
//		// 管理員登入發生例外
//		else if (request.getRequestURI().equalsIgnoreCase("/KarpyShopping/managerLogin")) {
//			mv.addObject("url", request.getRequestURL());
//			mv.setViewName("errorPage/managerLoginError");
//		}
//		// 管理員新增發生例外
//		else if (request.getRequestURI().equalsIgnoreCase("/KarpyShopping/manager/add")) {
//			mv.addObject("url", request.getRequestURL());
//			mv.setViewName("errorPage/managerRegistrationError");
//		}
//		// 管理員變更密碼發生例外
//		else if (request.getRequestURI().equalsIgnoreCase("/KarpyShopping/manager/change")) {
//			mv.addObject("url", request.getRequestURL());
//			mv.setViewName("errorPage/managerChangePasswordError");
//		}
//		// 其他
//		else {
//			mv.addObject("url", request.getRequestURL());
//			mv.setViewName("errorPage/managerNotFound");
//		}
//		return mv;
//	}

	@RequestMapping("/productById")
	public String getProductById(@RequestParam("pId") Integer pId, Model model) {
		model.addAttribute("product", service.getProductById(pId));
		if (service.getProductById(pId).getRankCount() != null) {
			model.addAttribute("rankAVG", service.getProductRankAVGById(pId));
		}
		return "/product/product";
	}

	@RequestMapping("/productByName")
	public String getProductByName(@RequestParam("pname") String pname, Model model) {
		model.addAttribute("product", service.getProductByName(pname));
		return "/product/product";
	}

	@RequestMapping("/products")
	public String getAllProducts(Model model) {
		List<ProductBean> list = service.getAllProducts();
		model.addAttribute("products", list);
		return "/product/products";
	}

	@RequestMapping("/productsByVendor")
	public String getProductsByVendor(@RequestParam("vId") Integer vId, Model model) {
		List<ProductBean> list = service.getProductByVendor(vId);
		model.addAttribute("products", list);
		return "/product/products";
	}
	
	@RequestMapping(value = "/getProductsByCategory")
	public String getProductsByCategory(@RequestParam("searchBy") String searchBy, Model model, HttpServletRequest request) {
		List<ProductBean> searchResult = new ArrayList<ProductBean>(service.getProductByCategory(searchBy));
		HttpSession session = request.getSession();
		session.setAttribute("products", searchResult);
		session.setAttribute("currentPageNo", 1);
		Integer totalPages = (int) (Math.ceil(searchResult.size() / (double) countPerPage));
		session.setAttribute("totalPages", totalPages);
		System.out.println("++++++++++++++++++++++++++++++++++&&&&&&&&&&&&&&&&&&&&&&&&&&-------------------------");

		return "redirect:/changePage1";
	}

//	@RequestMapping(value = "/getProductsBy", method = RequestMethod.GET)
//	public void getProductsByGET(@RequestParam("searchBy") String searchBy, Model model) {
//		getProductsByPOST(searchBy, model);
//	}

	// the way to use different submit btn in same form
//	@RequestMapping(value = "/productsByCategory", method = RequestMethod.POST)
//	public String getProductsByCategory(
//			@RequestParam("searchBy") String searchBy,
//			@RequestParam(required = false, value = "categoryBtn") String categoryBtn,
//			@RequestParam(required = false, value = "pnameBtn") String pnameBtn,
//			@RequestParam(required = false, value = "vendorBtn") String vendorBtn, 
//			Model model) {
//		if (categoryBtn != null) {
//			List<ProductBean> list = service.getProductByCategory(searchBy);
//			model.addAttribute("products", list);
//			return "products";
//		} else if (pnameBtn != null) {
//			ProductBean resultpb = service.getProductByName(searchBy);
//			model.addAttribute("product", resultpb);
//			return "product";
//		} else if (vendorBtn != null) {
//			List<ProductBean> list = service.getProductByVendor(Integer.parseInt(searchBy));
//			model.addAttribute("products", list);
//			return "products";
//		} else {
//		return null;
//		}
//	}
//	, method = RequestMethod.POST
	//backup
//	@RequestMapping(value = "/getProductsBy")
//	public String getProductsBy(@RequestParam("searchBy") String searchBy, Model model) {
//	if (service.getProductByCategory(searchBy).isEmpty() == false) {
//	List<ProductBean> list = service.getProductByCategory(searchBy);
//	model.addAttribute("products", list);	
//	return "/product/products";
//} else if (service.getProductByVendorName(searchBy).isEmpty() == false) {
//	List<ProductBean> list = service.getProductByVendorName(searchBy);
//	model.addAttribute("products", list);
//	return "/product/products";
//} else if (service.getProductByName(searchBy) != null) {
//	List<ProductBean> list = service.getProductByName(searchBy);
//	model.addAttribute("products", list);
//	return "/product/products";
//} else {
//	return null;
//}
//	}
	@RequestMapping(value = "/getProductsByManage")
	public String getProductsByManage() {
		return "/product/getProductsBy";
	}
	
	@RequestMapping(value = "/backToSearchResult")
	public String backToSearchResult() {
		return "/product/ManageProducts";
	}
	
	@RequestMapping(value = "/getProductsBy")
	public String getProductsBy(@RequestParam("searchBy") String searchBy, Model model, HttpServletRequest request) {
		List<ProductBean> allList = new ArrayList<ProductBean>();
		Set<ProductBean> checkSet = new HashSet<ProductBean>();
		allList = service.getAllProducts();
		for(String search : searchBy.trim().split(" ")) {
		for(ProductBean pb : allList) {
			if(pb.getPname().toLowerCase().indexOf(search.toLowerCase()) != -1) {
				checkSet.add(pb);
				System.out.println("----------------"+search+"==="+pb.getPname());
			}else if(pb.getCategory().toLowerCase().indexOf(search.toLowerCase()) != -1) {
				checkSet.add(pb);
				System.out.println("----------------"+search+"==="+pb.getCategory());
			}else if(pb.getVendorBean().getVname().toLowerCase().indexOf(search.toLowerCase()) != -1) {
				checkSet.add(pb);
				System.out.println("----------------"+search+"==="+pb.getVendorBean().getVname());
			}
		}
		}
		List<ProductBean> searchResult = new ArrayList<ProductBean>(checkSet);
		HttpSession session = request.getSession();
		session.setAttribute("products", searchResult);
		session.setAttribute("currentPageNo", 1);
		Integer totalPages = (int) (Math.ceil(searchResult.size() / (double) countPerPage));
		session.setAttribute("totalPages", totalPages);
		System.out.println("++++++++++++++++++++++++++++++++++&&&&&&&&&&&&&&&&&&&&&&&&&&-------------------------");
		if(searchResult.size() > 0) {
			if(searchBy.trim().length() > 0) {
				hService.checkExist(searchBy);
			}
		}
		return "redirect:/changePage1";
		
	}
	
	@RequestMapping(value = "/getProductsByNoSearchCount")
	public String getProductsByNoSearchCount(@RequestParam("searchBy") String searchBy, Model model, HttpServletRequest request) {
		List<ProductBean> allList = new ArrayList<ProductBean>();
		Set<ProductBean> checkSet = new HashSet<ProductBean>();
		allList = service.getAllProducts();
		for(String search : searchBy.trim().split(" ")) {
			for(ProductBean pb : allList) {
				if(pb.getPname().toLowerCase().indexOf(search.toLowerCase()) != -1) {
					checkSet.add(pb);
					System.out.println("----------------"+search+"==="+pb.getPname());
				}else if(pb.getCategory().toLowerCase().indexOf(search.toLowerCase()) != -1) {
					checkSet.add(pb);
					System.out.println("----------------"+search+"==="+pb.getCategory());
				}else if(pb.getVendorBean().getVname().toLowerCase().indexOf(search.toLowerCase()) != -1) {
					checkSet.add(pb);
					System.out.println("----------------"+search+"==="+pb.getVendorBean().getVname());
				}
			}
		}
		List<ProductBean> searchResult = new ArrayList<ProductBean>(checkSet);
		HttpSession session = request.getSession();
		session.setAttribute("products", searchResult);
		session.setAttribute("currentPageNo", 1);
		Integer totalPages = (int) (Math.ceil(searchResult.size() / (double) countPerPage));
		session.setAttribute("totalPages", totalPages);
		System.out.println("++++++++++++++++++++++++++++++++++&&&&&&&&&&&&&&&&&&&&&&&&&&-------------------------");

		return "redirect:/changePage1";
		
	}
	

	@RequestMapping(value = "/product/add", method = RequestMethod.GET)
	public String getAddNewProductForm(Model model) {
		ProductBean pb = new ProductBean();
		model.addAttribute("productBean", pb);
		return "/product/addProduct";
	}

	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public String processAddNewProductForm(@ModelAttribute("productBean") ProductBean pb,
			@RequestParam("sdate1") @DateTimeFormat(pattern = "yyyy/MM/dd") String sdate,
			@RequestParam("expdate1") @DateTimeFormat(pattern = "yyyy/MM/dd") String expdate, BindingResult result,
			HttpServletRequest request) {
		pb.setSdate(new java.sql.Timestamp(java.sql.Date.valueOf(sdate).getTime()));
		pb.setExpdate(new java.sql.Timestamp(java.sql.Date.valueOf(expdate).getTime()));

		//----------------handling image
		if (pb.getProductImageTemp() != null && !pb.getProductImageTemp().isEmpty()) {
			MultipartFile file = pb.getProductImageTemp();
			Blob blob;
			try {
				blob = SystemUtils2019.fileToBlob(file.getInputStream(), file.getSize());
				pb.setProductImage(blob);
			} catch (IOException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (pb.getProductImageTemp1() != null && !pb.getProductImageTemp1().isEmpty()) {
			MultipartFile file = pb.getProductImageTemp1();
			Blob blob;
			try {
				blob = SystemUtils2019.fileToBlob(file.getInputStream(), file.getSize());
				pb.setProductImage1(blob);
			} catch (IOException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (pb.getProductImageTemp2() != null && !pb.getProductImageTemp2().isEmpty()) {
			MultipartFile file = pb.getProductImageTemp2();
			Blob blob;
			try {
				blob = SystemUtils2019.fileToBlob(file.getInputStream(), file.getSize());
				pb.setProductImage2(blob);
			} catch (IOException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (pb.getProductImageTemp3() != null && !pb.getProductImageTemp3().isEmpty()) {
			MultipartFile file = pb.getProductImageTemp3();
			Blob blob;
			try {
				blob = SystemUtils2019.fileToBlob(file.getInputStream(), file.getSize());
				pb.setProductImage3(blob);
			} catch (IOException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if (pb.getDetail() != null && !pb.getDetail().isEmpty()) {
			String str = pb.getDetail();
			 while (str.indexOf("\n") != -1) {
				  str = str.substring(0, str.indexOf("\n")) + "<br>"
				    + str.substring(str.indexOf("\n") + 1);
				 }
			 pb.setDetail(str);
		}
//		long sizeInBytes = 0;
//		InputStream is = null;
//		Blob blob;
//		if (file.length != 0) {
//			int i = 0;
//			for (MultipartFile f : file) {
//				sizeInBytes = f.getSize();
//				try {
//					is = f.getInputStream();
//					blob = SystemUtils2019.fileToBlob(is, sizeInBytes);
//					System.out.println("------------" + blob);
//					if (i == 0) {
//						pb.setProductImage(blob);
//						i++;
//					} else if (i == 1) {
//						pb.setProductImage1(blob);
//						i++;
//					} else if (i == 2) {
//						pb.setProductImage2(blob);
//						i++;
//					} else if (i == 3) {
//						pb.setProductImage3(blob);
//					}
//
//				} catch (IOException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				} catch (SQLException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//			}
//		}

	
	service.addProduct(pb);
	return "redirect:/product/add";

	}

	@SuppressWarnings("null")
	@RequestMapping(value = "/product/update", method = RequestMethod.GET)
	public String getUpdateProductForm(@RequestParam("pId") Integer pId, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("productImage");
		session.removeAttribute("productImage1");
		session.removeAttribute("productImage2");
		session.removeAttribute("productImage3");
		ProductBean pb = service.getProductById(pId);
		SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd");
		if (pb.getSdate() != null) {
			String sdate = DATE_FORMAT.format(pb.getSdate());
			model.addAttribute("sdate1", sdate);
		}
		if (pb.getExpdate() != null) {
			String expdate = DATE_FORMAT.format(pb.getExpdate());
			model.addAttribute("expdate1", expdate);
		}

		Blob blob = null;
		byte[] imageData = null;

		if (pb.getProductImage() != null) {
			System.out.println("1");
			blob = pb.getProductImage();
			System.out.println("blob: " + blob);
			try {

//				if (pib.getProductImage() != null) {  //&& pib.getProductImage().length() > 0				
				imageData = blob.getBytes(1, (int) blob.length());
				System.out.println("imgdata:" + imageData);
				System.out.println("6");
			} catch (Exception e) {
				// TODO Auto-generated catch block

				System.out.println("helloWorld");
				e.printStackTrace();
			}
			session.setAttribute("productImage", Base64.getEncoder().encodeToString(imageData));
		}

		if (pb.getProductImage1() != null) {
			System.out.println("2");
			blob = pb.getProductImage1();
			System.out.println("blob: " + blob);
			try {

//				if (pib.getProductImage() != null) {  //&& pib.getProductImage().length() > 0				
				imageData = blob.getBytes(1, (int) blob.length());
				System.out.println("imgdata:" + imageData);
				System.out.println("6");
			} catch (Exception e) {
				// TODO Auto-generated catch block

				System.out.println("helloWorld");
				e.printStackTrace();
			}
			session.setAttribute("productImage1", Base64.getEncoder().encodeToString(imageData));
		}

		if (pb.getProductImage2() != null) {
			System.out.println("3");
			blob = pb.getProductImage2();
			System.out.println("blob: " + blob);
			try {

//				if (pib.getProductImage() != null) {  //&& pib.getProductImage().length() > 0				
				imageData = blob.getBytes(1, (int) blob.length());
				System.out.println("imgdata:" + imageData);
				System.out.println("6");
			} catch (Exception e) {
				// TODO Auto-generated catch block

				System.out.println("helloWorld");
				e.printStackTrace();
			}
			session.setAttribute("productImage2", Base64.getEncoder().encodeToString(imageData));
		}

		if (pb.getProductImage3() != null) {
			System.out.println("4");
			blob = pb.getProductImage3();
			System.out.println("blob: " + blob);
			try {

//				if (pib.getProductImage() != null) {  //&& pib.getProductImage().length() > 0				
				imageData = blob.getBytes(1, (int) blob.length());
				System.out.println("imgdata:" + imageData);
				System.out.println("6");
			} catch (Exception e) {
				// TODO Auto-generated catch block

				System.out.println("helloWorld");
				e.printStackTrace();
			}
			session.setAttribute("productImage3", Base64.getEncoder().encodeToString(imageData));
		}
//--------------------------------------------------------------------------------------------------
//		Blob[] blob = new Blob[4];
//		int token = 0;
//		if (pb.getProductImage() != null) {
//			blob[0] = pb.getProductImage();
//			token++;
//		}
//		if (pb.getProductImage1() != null) {
//			blob[1] = pb.getProductImage1();
//			token++;
//		}
//		if (pb.getProductImage2() != null) {
//			blob[2] = pb.getProductImage2();
//			token++;
//		}
//		if (pb.getProductImage3() != null) {
//			blob[3] = pb.getProductImage3();
//			token++;
//		}
//
//		for (int x = 0; x < token; x++) {
//			Blob b = blob[x];
//			byte[] imageData = null;
//			try {
//
////				if (pib.getProductImage() != null) {  //&& pib.getProductImage().length() > 0				
//				imageData = b.getBytes(1, (int) b.length());
//				System.out.println("imgdata:" + imageData);
//				System.out.println("6");
//			} catch (Exception e) {
//				// TODO Auto-generated catch block
//
//				System.out.println("helloWorld");
//				e.printStackTrace();
//			}
//			if (token == 1) {
//				session.setAttribute("productImage", Base64.getEncoder().encodeToString(imageData));
//			} else if (token == 2) {
//				session.setAttribute("productImage1", Base64.getEncoder().encodeToString(imageData));
//			} else if (token == 3) {
//				session.setAttribute("productImage2", Base64.getEncoder().encodeToString(imageData));
//			} else if (token == 4) {
//				session.setAttribute("productImage3", Base64.getEncoder().encodeToString(imageData));
//			}
//
//		}
//		token = 0;
		model.addAttribute("productBean", pb);
		System.out.println("get pb image: ");
		System.out.println(pb.getProductImage() == null);

		return "/product/updateProduct";
	}

	@RequestMapping(value = "/product/update", method = RequestMethod.POST)
	public String processUpdateProductForm(@ModelAttribute("productBean") ProductBean pb,
			@RequestParam("sdate1") @DateTimeFormat(pattern = "yyyy/MM/dd") String sdate,
			@RequestParam("expdate1") @DateTimeFormat(pattern = "yyyy/MM/dd") String expdate, BindingResult result,
			HttpServletRequest request) {
		ProductBean PB = service.getProductById(pb.getpId());
		if (!sdate.equals("")) {
			pb.setSdate(new java.sql.Timestamp(java.sql.Date.valueOf(sdate).getTime()));
		}
		if (!expdate.equals("")) {
			pb.setExpdate(new java.sql.Timestamp(java.sql.Date.valueOf(expdate).getTime()));
		}
		
		System.out.println("handling images start");
		System.out.println(service.getProductById(pb.getpId()).getProductImage() == null);
		System.out.println(pb.getProductImage() == null);
		if(PB.getProductImage() != null)
			pb.setProductImage(PB.getProductImage());
		if(PB.getProductImage1() != null)
			pb.setProductImage1(PB.getProductImage1());
		if(PB.getProductImage2() != null)
			pb.setProductImage2(PB.getProductImage2());
		if(PB.getProductImage3() != null)
			pb.setProductImage3(PB.getProductImage3());
		//----------------handling image
		if (pb.getProductImageTemp() != null && !pb.getProductImageTemp().isEmpty() && pb.getProductImageTemp().getSize() > 0) {
			System.out.println(pb.getProductImageTemp().isEmpty());
			System.out.println(pb.getProductImageTemp().getSize());
			MultipartFile file = pb.getProductImageTemp();
			Blob blob;
			try {
				blob = SystemUtils2019.fileToBlob(file.getInputStream(), file.getSize());
				pb.setProductImage(blob);
			} catch (IOException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (pb.getProductImageTemp1() != null && !pb.getProductImageTemp1().isEmpty()) {
			MultipartFile file = pb.getProductImageTemp1();
			Blob blob;
			try {
				blob = SystemUtils2019.fileToBlob(file.getInputStream(), file.getSize());
				pb.setProductImage1(blob);
			} catch (IOException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (pb.getProductImageTemp2() != null && !pb.getProductImageTemp2().isEmpty()) {
			MultipartFile file = pb.getProductImageTemp2();
			Blob blob;
			try {
				blob = SystemUtils2019.fileToBlob(file.getInputStream(), file.getSize());
				pb.setProductImage2(blob);
			} catch (IOException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (pb.getProductImageTemp3() != null && !pb.getProductImageTemp3().isEmpty()) {
			MultipartFile file = pb.getProductImageTemp3();
			Blob blob;
			try {
				blob = SystemUtils2019.fileToBlob(file.getInputStream(), file.getSize());
				pb.setProductImage3(blob);
			} catch (IOException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

//		if (pb.getProductImageTemp() != null) {
//
//			MultipartFile[] file = pb.getProductImageTemp();
//			long sizeInBytes = 0;
//			InputStream is = null;
//			Blob blob;
//			if (file.length != 0) {
//				int i = 0;
//				for (MultipartFile f : file) {
//					sizeInBytes = f.getSize();
//					try {
//						is = f.getInputStream();
//						blob = SystemUtils2019.fileToBlob(is, sizeInBytes);
//						System.out.println("------------" + blob);
//						if (i == 0) {
//							pb.setProductImage(blob);
//							i++;
//						} else if (i == 1) {
//							pb.setProductImage1(blob);
//							i++;
//						} else if (i == 2) {
//							pb.setProductImage2(blob);
//							i++;
//						} else if (i == 3) {
//							pb.setProductImage3(blob);
//						}
//
//					} catch (IOException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					} catch (SQLException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					}
//				}
//			}
//		}

		service.updateProduct(pb);
		return "redirect:/getProductsByManage";
	}

	@RequestMapping("/product/delete")
	public String deleteProduct(@RequestParam("pId") Integer pId) {
		service.deleteProduct(pId);
		return "redirect:/getProductsByManage";
	}

	@RequestMapping("/productById02")
	public String getProductById02(@RequestParam("pId") Integer pId, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("productImage");
		session.removeAttribute("productImage1");
		session.removeAttribute("productImage2");
		session.removeAttribute("productImage3");
		ProductBean pb = service.getProductById(pId);
		
		//handling images
		Blob blob = null;
		byte[] imageData = null;

		if (pb.getProductImage() != null) {
			blob = pb.getProductImage();
			try {		
				imageData = blob.getBytes(1, (int) blob.length());
			} catch (Exception e) {
				e.printStackTrace();
			}
			session.setAttribute("productImage", Base64.getEncoder().encodeToString(imageData));
		}

		if (pb.getProductImage1() != null) {
			blob = pb.getProductImage1();
			try {			
				imageData = blob.getBytes(1, (int) blob.length());
			} catch (Exception e) {
				e.printStackTrace();
			}
			session.setAttribute("productImage1", Base64.getEncoder().encodeToString(imageData));
		}

		if (pb.getProductImage2() != null) {
			blob = pb.getProductImage2();
			try {			
				imageData = blob.getBytes(1, (int) blob.length());
			} catch (Exception e) {
				e.printStackTrace();
			}
			session.setAttribute("productImage2", Base64.getEncoder().encodeToString(imageData));
		}

		if (pb.getProductImage3() != null) {
			blob = pb.getProductImage3();
			try {	
				imageData = blob.getBytes(1, (int) blob.length());;
			} catch (Exception e) {
				e.printStackTrace();
			}
			session.setAttribute("productImage3", Base64.getEncoder().encodeToString(imageData));
		}
		
		model.addAttribute("product", service.getProductById(pId));
//		if (service.getProductById(pId).getRankCount() != null) {
//			model.addAttribute("rankAVG", service.getProductRankAVGById(pId));
//		}
		return "productDetail/pd";

	}

}
