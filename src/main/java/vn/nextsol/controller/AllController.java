package vn.nextsol.controller;

import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import vn.nextsol.entity.Awards;
import vn.nextsol.entity.Banner;
import vn.nextsol.entity.CustomerComment;
import vn.nextsol.entity.Event;
import vn.nextsol.entity.HRpolicies;
import vn.nextsol.entity.News;
import vn.nextsol.entity.Product;
import vn.nextsol.entity.Project;
import vn.nextsol.entity.Question;
import vn.nextsol.entity.Recruitment;
import vn.nextsol.entity.Services;
import vn.nextsol.fileUpload.UploadImageFile;
import vn.nextsol.service.AwardService;
import vn.nextsol.service.BannerService;
import vn.nextsol.service.CustomerCommentService;
import vn.nextsol.service.DoubleService;
import vn.nextsol.service.EventService;
import vn.nextsol.service.HRpoliciesService;
import vn.nextsol.service.NewService;
import vn.nextsol.service.ProductService;
import vn.nextsol.service.ProjectService;
import vn.nextsol.service.QuestionService;
import vn.nextsol.service.RecruitmentService;
import vn.nextsol.service.RoleService;
import vn.nextsol.service.UserService;

@Controller
public class AllController {
	@Autowired
	private UserService userService;
	@Autowired
	private DoubleService doubleService;
	@Autowired
	private AwardService awardService;
	@Autowired
	private CustomerCommentService customerCommentService;
	@Autowired
	private NewService newService;
	@Autowired
	private ProductService productService;
	@Autowired
	private ProjectService projectService;
	@Autowired
	private RecruitmentService recruitmentService;
	@Autowired
	private EventService eventService;
	@Autowired
	private QuestionService questionService;
	@Autowired
	private HRpoliciesService hrpoliciesService;
	@Autowired
	private BannerService bannerService;
	@Autowired
	private RoleService roleService;

//////////////////////////////////////////BACKEND-service//////////////////////////////////////

	@RequestMapping("/admin/service")
	public String serviceAdmin(Model model) {
		return serviceAdminPage(model, 1, "id", "asc", null);
	}

	@GetMapping("/admin/service/page/{pageNumber}")
	public String serviceAdminPage(Model model, @PathVariable("pageNumber") int currentPage,
			@Param("sortField") String sortField, @Param("sortDir") String sortDir, @Param("keyword") String keyword) {

		Page<Services> page = doubleService.getServicesByName(currentPage, sortField, sortDir, keyword);
		long totalItems = page.getTotalElements();
		int totalPages = page.getTotalPages();

		List<Services> list = page.getContent();

		model.addAttribute("currentPage", currentPage);
		model.addAttribute("sortField", sortField);
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("list", list);
		model.addAttribute("sortDir", sortDir);
		model.addAttribute("keyword", keyword);

		String reverseSortDir = sortDir.equals("asc") ? "desc" : "asc";
		model.addAttribute("reverseSortDir", reverseSortDir);

		return "service";
	}

	@GetMapping("/admin/service/create")
	public String createService(Model model) {
		Services service = new Services();
		model.addAttribute("service", service);
		return "service_form";
	}

	@PostMapping(value = "/admin/service/save")
	public String saveService(@RequestParam(value = "service_name") String service_name,
			@RequestParam(value = "alt_name") String alt_name, @RequestParam(value = "logo") MultipartFile logo,
			@RequestParam(value = "image_link") MultipartFile image_link,
			@RequestParam(value = "short_description") String short_description,
			@RequestParam(value = "full_description") String full_description,
			@RequestParam(value = "is_highlight") int is_highlight) throws Exception {
		Services service = new Services();
		service.setCreated_at(new Date());
		service.setUpdated_at(new Date());
		service.setService_name(service_name);
		service.setAlt_name(alt_name);
		service.setLogo(UploadImageFile.upload(logo));
		service.setImage_link(UploadImageFile.upload(image_link));
		service.setShort_description(short_description);
		service.setFull_description(full_description);
		service.setIs_highlight(is_highlight);

		doubleService.saveService(service);
		return "redirect:/admin/service";
	}

	@PostMapping(value = "/admin/service/update")
	public String updateService(@RequestParam(value = "service_name") String service_name,
			@RequestParam(value = "alt_name") String alt_name, @RequestParam(value = "logo") MultipartFile logo,
			@RequestParam(value = "image_link") MultipartFile image_link,
			@RequestParam(value = "short_description") String short_description,
			@RequestParam(value = "full_description") String full_description,
			@RequestParam(value = "is_highlight") int is_highlight, @RequestParam(value = "id") int id)
			throws Exception {
		Services service = doubleService.findOneService(id);
		service.setUpdated_at(new Date());
		service.setService_name(service_name);
		service.setAlt_name(alt_name);
		if (logo.getSize() > 0) {
//xoa file system
			String deleteFile = service.getLogo();
			File file = new File("C:\\xampp\\htdocs\\images\\" + deleteFile.substring(29));
			if (file.delete()) {
				System.out.println(file + " đã xóa");
			}
			service.setLogo(UploadImageFile.upload(logo));
		}
		if (image_link.getSize() > 0) {
//xoa file system
			String deleteFile = service.getImage_link();
			File file = new File("C:\\xampp\\htdocs\\images\\" + deleteFile.substring(29));
			if (file.delete()) {
				System.out.println(file + " đã xóa");
			}
			service.setImage_link(UploadImageFile.upload(image_link));
		}
		service.setShort_description(short_description);
		service.setFull_description(full_description);
		service.setIs_highlight(is_highlight);

		doubleService.saveService(service);
		return "redirect:/admin/service";
	}

	@GetMapping("/admin/service/{id}/edit")
	public String editService(@PathVariable int id, Model model) {
		model.addAttribute("service", doubleService.findOneService(id));
		return "service_form_update";
	}

	@GetMapping("/admin/service/{id}/delete")
	public String deleteService(@PathVariable long id) {
		Services service = doubleService.findOneService(id);
		String deleteFile1 = service.getImage_link();
		String deleteFile2 = service.getLogo();
		File file1 = new File("C:\\xampp\\htdocs\\images\\" + deleteFile1.substring(29));
		File file2 = new File("C:\\xampp\\htdocs\\images\\" + deleteFile2.substring(29));
		if (file1.delete() && file2.delete()) {
			System.out.println(file1 + " " + file2 + " đã xóa");
		}
		doubleService.deleteService(service);
		return "redirect:/admin/service";
	}

//////////////////////////////////////////BACKEND-award//////////////////////////////////////

	@RequestMapping("/admin/award")
	public String awardAdmin(Model model) {
		return awardAdminPage(model, 1, "name", "asc", null);
	}

	@GetMapping("/admin/award/page/{pageNumber}")
	public String awardAdminPage(Model model, @PathVariable("pageNumber") int currentPage,
			@Param("sortField") String sortField, @Param("sortDir") String sortDir, @Param("keyword") String keyword) {

		Page<Awards> page = awardService.getAwardsByName(currentPage, sortField, sortDir, keyword);
		long totalItems = page.getTotalElements();
		int totalPages = page.getTotalPages();

		List<Awards> list = page.getContent();

		model.addAttribute("currentPage", currentPage);
		model.addAttribute("sortField", sortField);
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("list", list);
		model.addAttribute("sortDir", sortDir);
		model.addAttribute("keyword", keyword);

		String reverseSortDir = sortDir.equals("asc") ? "desc" : "asc";
		model.addAttribute("reverseSortDir", reverseSortDir);

		return "award";
	}

	@GetMapping("/admin/award/create")
	public String createAward(Model model) {
		Awards Award = new Awards();
		Award.setCreated_at(new Date());
		model.addAttribute("award", Award);
		return "award_form";
	}

	@PostMapping(value = "/admin/award/save")
	public String saveAward(@RequestParam(value = "image") MultipartFile image,
			@RequestParam(value = "name") String name, @RequestParam(value = "description") String description)
			throws Exception {
		Awards awards = new Awards();
		awards.setCreated_at(new Date());
		awards.setName(name);
		awards.setDescription(description);
		awards.setImage(UploadImageFile.upload(image));
		awardService.saveAwards(awards);
		return "redirect:/admin/award";
	}

	@PostMapping(value = "/admin/award/update")
	public String updateAward(@RequestParam(value = "image") MultipartFile image,
			@RequestParam(value = "name") String name, @RequestParam(value = "description") String description,
			@RequestParam(value = "id") int id) throws Exception {
		Awards awards = awardService.findOneAwards(id);
		awards.setUpdated_at(new Date());
		awards.setName(name);
		awards.setDescription(description);

		if (image.getSize() > 0) {
//xoa file system
			String deleteFile = awards.getImage();
			File file = new File("C:\\xampp\\htdocs\\images\\" + deleteFile.substring(29));
			if (file.delete()) {
				System.out.println(file + " đã xóa");
			}

			awards.setImage(UploadImageFile.upload(image));
		}
		awardService.saveAwards(awards);
		return "redirect:/admin/award";
	}

	@GetMapping("/admin/award/{id}/edit")
	public String editAward(@PathVariable int id, Model model) {
		model.addAttribute("award", awardService.findOneAwards(id));
		return "award_form_update";
	}

	@GetMapping("/admin/award/{id}/delete")
	public String deleteAward(@PathVariable long id) {
		Awards award = awardService.findOneAwards(id);

//http://localhost:8181/images/1598978837128_logo.jpg
//http://localhost:8181/
//System.out.println(deleteFile.substring(29));
//int a= UploadImageFile.ip.length();
//System.out.println(a);
		String deleteFile = award.getImage();
		File file = new File("C:\\xampp\\htdocs\\images\\" + deleteFile.substring(29));
		if (file.delete()) {
			System.out.println(file + " đã xóa");
		}

		awardService.deleteAwards(award);
		return "redirect:/admin/award";
	}

	@GetMapping("/403")
	public String error403() {
		return "403";
	}

//////////////////////////////////////////BACKEND-CustomerComment//////////////////////////////////////
	@RequestMapping("/admin/CustomerComment")
	public String CustomerCommentAdmin(Model model) {
		return CustomerCommentAdminPage(model, 1, "name", "asc", null);
	}

	@GetMapping("/admin/CustomerComment/page/{pageNumber}")
	public String CustomerCommentAdminPage(Model model, @PathVariable("pageNumber") int currentPage,
			@Param("sortField") String sortField, @Param("sortDir") String sortDir, @Param("keyword") String keyword) {

		Page<CustomerComment> page = customerCommentService.getCustomerCommentByName(currentPage, sortField, sortDir,
				keyword);
		long totalItems = page.getTotalElements();
		int totalPages = page.getTotalPages();

		List<CustomerComment> list = page.getContent();

		model.addAttribute("currentPage", currentPage);
		model.addAttribute("sortField", sortField);
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("list", list);
		model.addAttribute("sortDir", sortDir);
		model.addAttribute("keyword", keyword);

		String reverseSortDir = sortDir.equals("asc") ? "desc" : "asc";
		model.addAttribute("reverseSortDir", reverseSortDir);

		return "CustomerComment";
	}

	@GetMapping("/admin/CustomerComment/create")
	public String createCustomerComment(Model model) {
		CustomerComment customerComment = new CustomerComment();
		customerComment.setCreated_at(new Date());
		model.addAttribute("customercomment", customerComment);
		return "CustomerComment_form";
	}

	@PostMapping(value = "/admin/CustomerComment/save")
	public String saveCustomerComment(@ModelAttribute("customercomment") CustomerComment customercomment) {
		customercomment.setUpdated_at(new Date());
		customerCommentService.saveCustomerComment(customercomment);
		return "redirect:/admin/CustomerComment";
	}

	@GetMapping("/admin/CustomerComment/{id}/edit")
	public String editCustomerComment(@PathVariable int id, Model model) {
		model.addAttribute("customercomment", customerCommentService.findOneCustomerComment(id));
		return "CustomerComment_form";
	}

	@GetMapping("/admin/CustomerComment/{id}/delete")
	public String deleteCustomerComment(@PathVariable long id, RedirectAttributes redirect) {
		CustomerComment cus = customerCommentService.findOneCustomerComment(id);
		customerCommentService.deleteCustomerComment(cus);
		redirect.addFlashAttribute("success", "Deleted successfully!");
		return "redirect:/admin/CustomerComment";
	}

//////////////////////////////////////////BACKEND-new//////////////////////////////////////
	@RequestMapping("/admin/new")
	public String newAdmin(Model model) {
		return newAdminPage(model, 1, "name", "asc", null);
	}

	@GetMapping("/admin/new/page/{pageNumber}")
	public String newAdminPage(Model model, @PathVariable("pageNumber") int currentPage,
			@Param("sortField") String sortField, @Param("sortDir") String sortDir, @Param("keyword") String keyword) {

		Page<News> page = newService.getNewsByName(currentPage, sortField, sortDir, keyword);
		long totalItems = page.getTotalElements();
		int totalPages = page.getTotalPages();

		List<News> list = page.getContent();

		model.addAttribute("currentPage", currentPage);
		model.addAttribute("sortField", sortField);
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("list", list);
		model.addAttribute("sortDir", sortDir);
		model.addAttribute("keyword", keyword);

		String reverseSortDir = sortDir.equals("asc") ? "desc" : "asc";
		model.addAttribute("reverseSortDir", reverseSortDir);

		return "new";
	}

	@GetMapping("/admin/new/create")
	public String createNew(Model model) {
		News newss = new News();
		model.addAttribute("newss", newss);
		return "new_form";
	}

	@PostMapping(value = "/admin/new/save")
	public String saveNew(@RequestParam(value = "name") String name,
			@RequestParam(value = "cover_image") MultipartFile cover_image,
			@RequestParam(value = "description") String description,
			@RequestParam(value = "is_highlight") int is_highlight) throws Exception {
		News news = new News();
		news.setCreated_at(new Date());
		news.setUpdated_at(new Date());
		news.setName(name);
		news.setDescription(description);
		news.setCover_image(UploadImageFile.upload(cover_image));
		newService.saveNews(news);
		return "redirect:/admin/new";
	}

	@PostMapping(value = "/admin/new/update")
	public String updateNew(@RequestParam(value = "name") String name,
			@RequestParam(value = "cover_image") MultipartFile cover_image,
			@RequestParam(value = "description") String description,
			@RequestParam(value = "is_highlight") int is_highlight, @RequestParam(value = "id") int id)
			throws Exception {
		News news = newService.findOneNews(id);
		news.setUpdated_at(new Date());
		news.setName(name);
		news.setDescription(description);
		newService.saveNews(news);

		if (cover_image.getSize() > 0) {
//xoa file system
			String deleteFile = news.getCover_image();
			File file = new File("C:\\xampp\\htdocs\\images\\" + deleteFile.substring(29));
			if (file.delete()) {
				System.out.println(file + " đã xóa");
			}
			news.setCover_image(UploadImageFile.upload(cover_image));
		}
		newService.saveNews(news);
		return "redirect:/admin/new";
	}

	@GetMapping("/admin/new/{id}/edit")
	public String editNew(@PathVariable int id, Model model) {
		model.addAttribute("newss", newService.findOneNews(id));
		return "new_form_update";
	}

	@GetMapping("/admin/new/{id}/delete")
	public String deleteNew(@PathVariable long id) {
		News news = newService.findOneNews(id);
		String deleteFile = news.getCover_image();
		File file = new File("C:\\xampp\\htdocs\\images\\" + deleteFile.substring(29));
		if (file.delete()) {
			System.out.println(file + " đã xóa");
		}
		newService.deleteNews(news);
		return "redirect:/admin/new";
	}
//////////////////////////////////////////BACKEND-product//////////////////////////////////////

	@RequestMapping("/admin/product")
	public String productAdmin(Model model) {
		return pageProductAdmin(model, 1, "name", "asc", null);
	}

	@GetMapping("/admin/product/page/{pageNumber}")
	public String pageProductAdmin(Model model, @PathVariable("pageNumber") int currentPage,
			@Param("sortField") String sortField, @Param("sortDir") String sortDir, @Param("keyword") String keyword) {

		Page<Product> page = productService.getUserByName(currentPage, sortField, sortDir, keyword);
		long totalItems = page.getTotalElements();
		int totalPages = page.getTotalPages();

		List<Product> list = page.getContent();

		model.addAttribute("currentPage", currentPage);
		model.addAttribute("sortField", sortField);
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("list", list);
		model.addAttribute("sortDir", sortDir);
		model.addAttribute("keyword", keyword);

		String reverseSortDir = sortDir.equals("asc") ? "desc" : "asc";
		model.addAttribute("reverseSortDir", reverseSortDir);

		return "product";
	}

	@GetMapping("/admin/product/create")
	public String createProduct(Model model) {
		Product product = new Product();
		model.addAttribute("product", product);
		return "product_form";
	}

	@PostMapping(value = "/admin/product/save")
	public String saveProduct(@RequestParam(value = "name") String name,
			@RequestParam(value = "classify") String classify, @RequestParam(value = "description") String description,
			@RequestParam(value = "image") MultipartFile image, @RequestParam(value = "theme") String theme)
			throws Exception {
		Product product = new Product();
		product.setCreated_at(new Date());
		product.setUpdated_at(new Date());
		product.setName(name);
		product.setClassify(classify);
		product.setDescription(description);
		product.setImage(UploadImageFile.upload(image));
		product.setTheme(theme);

		productService.saveProduct(product);
		return "redirect:/admin/product";
	}

	@PostMapping(value = "/admin/product/update")
	public String updateProduct(@RequestParam(value = "name") String name,
			@RequestParam(value = "classify") String classify, @RequestParam(value = "description") String description,
			@RequestParam(value = "image") MultipartFile image, @RequestParam(value = "theme") String theme,
			@RequestParam(value = "id") int id) throws Exception {
		Product product = productService.findOneProduct(id);
		product.setUpdated_at(new Date());
		product.setName(name);
		product.setClassify(classify);
		product.setDescription(description);
		if (image.getSize() > 0) {
//xoa file system
			String deleteFile = product.getImage();
			File file = new File("C:\\xampp\\htdocs\\images\\" + deleteFile.substring(29));
			if (file.delete()) {
				System.out.println(file + " đã xóa");
			}
			product.setImage(UploadImageFile.upload(image));
		}
		product.setTheme(theme);
		productService.saveProduct(product);
		return "redirect:/admin/product";
	}

	@GetMapping("/admin/product/{id}/edit")
	public String editProduct(@PathVariable int id, Model model) {
		model.addAttribute("product", productService.findOneProduct(id));
		return "product_form_update";
	}

	@GetMapping("/admin/product/{id}/delete")
	public String deleteProduct(@PathVariable long id, RedirectAttributes redirect) {
		Product product = productService.findOneProduct(id);
		String deleteFile = product.getImage();
		File file = new File("C:\\xampp\\htdocs\\images\\" + deleteFile.substring(29));
		if (file.delete()) {
			System.out.println(file + " đã xóa");
		}
		productService.deleteProduct(product);
		redirect.addFlashAttribute("success", "Deleted successfully!");
		return "redirect:/admin/product";
	}

//////////////////////////////////////////BACKEND-project//////////////////////////////////////

	@RequestMapping("/admin/project")
	public String projectAdmin(Model model) {
		return projectAdminPage(model, 1, "name", "asc", null);
	}

	@GetMapping("/admin/project/page/{pageNumber}")
	public String projectAdminPage(Model model, @PathVariable("pageNumber") int currentPage,
			@Param("sortField") String sortField, @Param("sortDir") String sortDir, @Param("keyword") String keyword) {

		Page<Project> page = projectService.getProjectByName(currentPage, sortField, sortDir, keyword);
		long totalItems = page.getTotalElements();
		int totalPages = page.getTotalPages();

		List<Project> list = page.getContent();

		model.addAttribute("currentPage", currentPage);
		model.addAttribute("sortField", sortField);
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("list", list);
		model.addAttribute("sortDir", sortDir);
		model.addAttribute("keyword", keyword);

		String reverseSortDir = sortDir.equals("asc") ? "desc" : "asc";
		model.addAttribute("reverseSortDir", reverseSortDir);

		return "project";
	}

	@GetMapping("/admin/project/create")
	public String createProject(Model model) {
		Project project = new Project();
		project.setCreated_at(new Date());
		model.addAttribute("project", project);
		return "project_form";
	}

	@PostMapping(value = "/admin/project/save")
	public String saveProject(@ModelAttribute("project") Project project) {
		project.setUpdated_at(new Date());
		projectService.saveProject(project);
		return "redirect:/admin/project";
	}

	@GetMapping("/admin/project/{id}/edit")
	public String editProject(@PathVariable int id, Model model) {
		model.addAttribute("project", projectService.findOneProject(id));
		return "project_form";
	}

	@GetMapping("/admin/project/{id}/delete")
	public String deleteProject(@PathVariable long id, RedirectAttributes redirect) {
		Project project = projectService.findOneProject(id);
		projectService.deleteProject(project);
		redirect.addFlashAttribute("success", "Deleted successfully!");
		return "redirect:/admin/project";
	}

//////////////////////////////////////////BACKEND-recruitment//////////////////////////////////////
	@RequestMapping("/admin/recruitment")
	public String recruitmentAdmin(Model model) {
		return recruitmentAdminPage(model, 1, "id", "asc", null);
	}

	@GetMapping("/admin/recruitment/page/{pageNumber}")
	public String recruitmentAdminPage(Model model, @PathVariable("pageNumber") int currentPage,
			@Param("sortField") String sortField, @Param("sortDir") String sortDir, @Param("keyword") String keyword) {

		Page<Recruitment> page = recruitmentService.getRecruitmentByName(currentPage, sortField, sortDir, keyword);
		long totalItems = page.getTotalElements();
		int totalPages = page.getTotalPages();

		List<Recruitment> list = page.getContent();

		model.addAttribute("currentPage", currentPage);
		model.addAttribute("sortField", sortField);
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("list", list);
		model.addAttribute("sortDir", sortDir);
		model.addAttribute("keyword", keyword);

		String reverseSortDir = sortDir.equals("asc") ? "desc" : "asc";
		model.addAttribute("reverseSortDir", reverseSortDir);

		return "recruitment";
	}

	@GetMapping("/admin/recruitment/create")
	public String createRecruitment(Model model) {
		Recruitment recruitment = new Recruitment();
		model.addAttribute("recruitment", recruitment);
		return "recruitment_form";
	}

	@PostMapping(value = "/admin/recruitment/save")
	public String saveRecruitment(@RequestParam(value = "job_name") String job_name,
			@RequestParam(value = "type") String type, @RequestParam(value = "salary") String salary,
			@RequestParam(value = "experience") String experience,
			@RequestParam(value = "image_link") MultipartFile image_link,
			@RequestParam(value = "expire_on") String expire_on, @RequestParam(value = "details") String details)
			throws Exception {
		Recruitment recruitment = new Recruitment();
		recruitment.setCreated_at(new Date());
		recruitment.setUpdated_at(new Date());
		recruitment.setJob_name(job_name);
		recruitment.setType(type);
		recruitment.setSalary(salary);
		recruitment.setImage_link(UploadImageFile.upload(image_link));
		recruitment.setExperience(experience);
		recruitment.setDetails(details);

		Date date = new Date();
		DateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");
		try {
			date = (Date) formatter.parse(expire_on);
			recruitment.setExpire_on(date);
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		recruitmentService.saveRecruitment(recruitment);
		return "redirect:/admin/recruitment";
	}

	@PostMapping(value = "/admin/recruitment/update")
	public String updateRecruitment(@RequestParam(value = "job_name") String job_name,
			@RequestParam(value = "type") String type, @RequestParam(value = "salary") String salary,
			@RequestParam(value = "experience") String experience,
			@RequestParam(value = "image_link") MultipartFile image_link,
			@RequestParam(value = "expire_on") String expire_on, @RequestParam(value = "details") String details,
			@RequestParam(value = "id") int id) throws Exception {
		Recruitment recruitment = recruitmentService.findOneRecruitment(id);
		recruitment.setUpdated_at(new Date());
		recruitment.setJob_name(job_name);
		recruitment.setType(type);
		recruitment.setSalary(salary);
		if (image_link.getSize() > 0) {
//xoa file system
			String deleteFile = recruitment.getImage_link();
			File file = new File("C:\\xampp\\htdocs\\images\\" + deleteFile.substring(29));
			if (file.delete()) {
				System.out.println(file + " đã xóa");
			}
			recruitment.setImage_link(UploadImageFile.upload(image_link));
		}
		recruitment.setExperience(experience);
		recruitment.setDetails(details);

		Date date = new Date();
		DateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");
		try {
			date = (Date) formatter.parse(expire_on);
			recruitment.setExpire_on(date);
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		recruitmentService.saveRecruitment(recruitment);
		return "redirect:/admin/recruitment";
	}

	@GetMapping("/admin/recruitment/{id}/edit")
	public String editRecruitment(@PathVariable int id, Model model) {
		model.addAttribute("recruitment", recruitmentService.findOneRecruitment(id));
		return "recruitment_form_update";
	}

	@GetMapping("/admin/recruitment/{id}/delete")
	public String deleteRecruitment(@PathVariable long id, RedirectAttributes redirect) {
		Recruitment recruitment = recruitmentService.findOneRecruitment(id);
		String deleteFile = recruitment.getImage_link();
		File file = new File("C:\\xampp\\htdocs\\images\\" + deleteFile.substring(29));
		if (file.delete()) {
			System.out.println(file + " đã xóa");
		}
		recruitmentService.deleteRecruitment(recruitment);
		redirect.addFlashAttribute("success", "Deleted successfully!");
		return "redirect:/admin/recruitment";
	}

//////////////////////////////////////////BACKEND-event//////////////////////////////////////

	@RequestMapping("/admin/event")
	public String eventAdmin(Model model) {
		return eventAdminPage(model, 1, "name", "asc", null);
	}

	@GetMapping("/admin/event/page/{pageNumber}")
	public String eventAdminPage(Model model, @PathVariable("pageNumber") int currentPage,
			@Param("sortField") String sortField, @Param("sortDir") String sortDir, @Param("keyword") String keyword) {

		Page<Event> page = eventService.getEventByName(currentPage, sortField, sortDir, keyword);
		long totalItems = page.getTotalElements();
		int totalPages = page.getTotalPages();

		List<Event> list = page.getContent();

		model.addAttribute("currentPage", currentPage);
		model.addAttribute("sortField", sortField);
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("list", list);
		model.addAttribute("sortDir", sortDir);
		model.addAttribute("keyword", keyword);

		String reverseSortDir = sortDir.equals("asc") ? "desc" : "asc";
		model.addAttribute("reverseSortDir", reverseSortDir);

		return "event";
	}

	@GetMapping("/admin/event/create")
	public String createEvent(Model model) {
		Event event = new Event();
		event.setCreated_at(new Date());
		model.addAttribute("event", event);
		return "event_form";
	}

	@PostMapping(value = "/admin/event/save")
	public String saveEvent(@ModelAttribute("event") Event event) {
		event.setUpdated_at(new Date());
		eventService.saveEvent(event);
		return "redirect:/admin/event";
	}

	@GetMapping("/admin/event/{id}/edit")
	public String editEvent(@PathVariable int id, Model model) {
		model.addAttribute("event", eventService.findOneEvent(id));
		return "event_form";
	}

	@GetMapping("/admin/event/{id}/delete")
	public String deleteEvent(@PathVariable long id, RedirectAttributes redirect) {
		Event event = eventService.findOneEvent(id);
		eventService.deleteEvent(event);
		redirect.addFlashAttribute("success", "Deleted successfully!");
		return "redirect:/admin/event";
	}

//////////////////////////////////////////BACKEND-question//////////////////////////////////////

	@RequestMapping("/admin/question")
	public String questionAdmin(Model model) {
		return questionAdminPage(model, 1, "name", "asc", null);
	}

	@GetMapping("/admin/question/page/{pageNumber}")
	public String questionAdminPage(Model model, @PathVariable("pageNumber") int currentPage,
			@Param("sortField") String sortField, @Param("sortDir") String sortDir, @Param("keyword") String keyword) {

		Page<Question> page = questionService.getQuestionByName(currentPage, sortField, sortDir, keyword);
		long totalItems = page.getTotalElements();
		int totalPages = page.getTotalPages();

		List<Question> list = page.getContent();

		model.addAttribute("currentPage", currentPage);
		model.addAttribute("sortField", sortField);
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("list", list);
		model.addAttribute("sortDir", sortDir);
		model.addAttribute("keyword", keyword);

		String reverseSortDir = sortDir.equals("asc") ? "desc" : "asc";
		model.addAttribute("reverseSortDir", reverseSortDir);

		return "question";
	}

	@GetMapping("/admin/question/{id}/delete")
	public String deleteQuestion(@PathVariable long id, RedirectAttributes redirect) {
		Question question = questionService.findOneQuestion(id);
		questionService.deleteQuestion(question);
		return "redirect:/admin/question";
	}

//////////////////////////////////////////BACKEND-HRpolicies//////////////////////////////////////

	@RequestMapping("/admin/HRpolicies")
	public String HRpoliciesAdmin(Model model) {
		return HRpoliciesAdminPage(model, 1, "title", "asc", null);
	}

	@GetMapping("/admin/HRpolicies/page/{pageNumber}")
	public String HRpoliciesAdminPage(Model model, @PathVariable("pageNumber") int currentPage,
			@Param("sortField") String sortField, @Param("sortDir") String sortDir, @Param("keyword") String keyword) {

		Page<HRpolicies> page = hrpoliciesService.getHRpoliciesByName(currentPage, sortField, sortDir, keyword);
		long totalItems = page.getTotalElements();
		int totalPages = page.getTotalPages();

		List<HRpolicies> list = page.getContent();

		model.addAttribute("currentPage", currentPage);
		model.addAttribute("sortField", sortField);
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("list", list);
		model.addAttribute("sortDir", sortDir);
		model.addAttribute("keyword", keyword);

		String reverseSortDir = sortDir.equals("asc") ? "desc" : "asc";
		model.addAttribute("reverseSortDir", reverseSortDir);

		return "HRpolicies";
	}

	@GetMapping("/admin/HRpolicies/create")
	public String createHRpolicies(Model model) {
		HRpolicies hrpolicies = new HRpolicies();
		model.addAttribute("hrpolicies", hrpolicies);
		return "HRpolicies_form";
	}

	@PostMapping(value = "/admin/HRpolicies/save")
	public String saveHRpolicies(@RequestParam(value = "title") String title,
			@RequestParam(value = "content") String content, @RequestParam(value = "image") MultipartFile image,
			@RequestParam(value = "is_highlight") int is_highlight) throws Exception {
		HRpolicies hrpolicies = new HRpolicies();
		hrpolicies.setCreated_at(new Date());
		hrpolicies.setUpdated_at(new Date());
		hrpolicies.setTitle(title);
		hrpolicies.setContent(content);
		hrpolicies.setImage(UploadImageFile.upload(image));
		hrpolicies.setIs_highlight(is_highlight);
		hrpoliciesService.saveHRpolicies(hrpolicies);
		return "redirect:/admin/HRpolicies";
	}

	@PostMapping(value = "/admin/HRpolicies/update")
	public String updateHRpolicies(@RequestParam(value = "title") String title,
			@RequestParam(value = "content") String content, @RequestParam(value = "image") MultipartFile image,
			@RequestParam(value = "is_highlight") int is_highlight, @RequestParam(value = "id") int id)
			throws Exception {
		HRpolicies hrpolicies = hrpoliciesService.findOneHRpolicies(id);
		hrpolicies.setUpdated_at(new Date());
		hrpolicies.setTitle(title);
		hrpolicies.setContent(content);
		if (image.getSize() > 0) {
//xoa file system
			String deleteFile = hrpolicies.getImage();
			File file = new File("C:\\xampp\\htdocs\\images\\" + deleteFile.substring(29));
			if (file.delete()) {
				System.out.println(file + " đã xóa");
			}
			hrpolicies.setImage(UploadImageFile.upload(image));
		}
		hrpolicies.setIs_highlight(is_highlight);
		hrpoliciesService.saveHRpolicies(hrpolicies);
		return "redirect:/admin/HRpolicies";
	}

	@GetMapping("/admin/HRpolicies/{id}/edit")
	public String editHRpolicies(@PathVariable int id, Model model) {
		model.addAttribute("hrpolicies", hrpoliciesService.findOneHRpolicies(id));
		return "HRpolicies_form_update";
	}

	@GetMapping("/admin/HRpolicies/{id}/delete")
	public String deleteHRpolicies(@PathVariable long id, RedirectAttributes redirect) {
		HRpolicies hrpolicies = hrpoliciesService.findOneHRpolicies(id);
		String deleteFile = hrpolicies.getImage();
		File file = new File("C:\\xampp\\htdocs\\images\\" + deleteFile.substring(29));
		if (file.delete()) {
			System.out.println(file + " đã xóa");
		}
		hrpoliciesService.deleteHRpolicies(hrpolicies);
		return "redirect:/admin/HRpolicies";
	}

//////////////////////////////////////////BACKEND-BANNER//////////////////////////////////////

	@RequestMapping("/admin/banner")
	public String bannerAdmin(Model model) {
		return bannerAdminPage(model, 1, "name", "asc", null);
	}

	@GetMapping("/admin/banner/page/{pageNumber}")
	public String bannerAdminPage(Model model, @PathVariable("pageNumber") int currentPage,
			@Param("sortField") String sortField, @Param("sortDir") String sortDir, @Param("keyword") String keyword) {

		Page<Banner> page = bannerService.getBannerByName(currentPage, sortField, sortDir, keyword);
		long totalItems = page.getTotalElements();
		int totalPages = page.getTotalPages();

		List<Banner> list = page.getContent();

		model.addAttribute("currentPage", currentPage);
		model.addAttribute("sortField", sortField);
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("list", list);
		model.addAttribute("sortDir", sortDir);
		model.addAttribute("keyword", keyword);

		String reverseSortDir = sortDir.equals("asc") ? "desc" : "asc";
		model.addAttribute("reverseSortDir", reverseSortDir);

		return "banner";
	}

	@GetMapping("/admin/banner/create")
	public String createBANNER(Model model) {
		model.addAttribute("banner", new Banner());
		return "banner_form";
	}

	@PostMapping(value = "/admin/banner/save")
	public String saveBanner(@RequestParam(value = "image") MultipartFile image,
			@RequestParam(value = "name") String name, @RequestParam(value = "caption") String caption,
			@RequestParam(value = "is_highlight") int is_highlight) throws Exception {
		Banner banner = new Banner();
		banner.setName(name);
		banner.setCaption(caption);
		banner.setImage(UploadImageFile.upload(image));
		banner.setIs_highlight(is_highlight);

		bannerService.saveBanner(banner);
		return "redirect:/admin/banner";
	}

	@PostMapping(value = "/admin/banner/update")
	public String updateBanner(@RequestParam(value = "image") MultipartFile image,
			@RequestParam(value = "name") String name, @RequestParam(value = "caption") String caption,
			@RequestParam(value = "is_highlight") int is_highlight, @RequestParam(value = "id") int id)
			throws Exception {
		Banner banner = bannerService.findOneBanner(id);
		banner.setName(name);
		banner.setCaption(caption);
		banner.setIs_highlight(is_highlight);
		if (image.getSize() > 0) {
//xoa file system
			String deleteFile = banner.getImage();
			File file = new File("C:\\xampp\\htdocs\\images\\" + deleteFile.substring(29));
			if (file.delete()) {
				System.out.println(file + " đã xóa");
			}
			banner.setImage(UploadImageFile.upload(image));
		}
		bannerService.saveBanner(banner);
		return "redirect:/admin/banner";
	}

	@GetMapping("/admin/banner/{id}/edit")
	public String editBANNER(@PathVariable int id, Model model) {
		model.addAttribute("banner", bannerService.findOneBanner(id));
		return "banner_form_update";
	}

	@GetMapping("/admin/banner/{id}/delete")
	public String deleteBANNER(@PathVariable long id, RedirectAttributes redirect) {
		Banner banner = bannerService.findOneBanner(id);
		String deleteFile = banner.getImage();
		File file = new File("C:\\xampp\\htdocs\\images\\" + deleteFile.substring(29));
		if (file.delete()) {
			System.out.println(file + " đã xóa");
		}
		bannerService.deleteBanner(banner);
		return "redirect:/admin/banner";
	}

//************************************************************FRONTEND********************************************************************
	@GetMapping({ "/home", "/" })
	public String home(Model model) {
		model.addAttribute("service", doubleService.search3Service());
		model.addAttribute("project", projectService.search10Project());
		model.addAttribute("customercomment", customerCommentService.search3());
		model.addAttribute("news", newService.search3News());
		model.addAttribute("serviceAll", doubleService.findAllService());
		model.addAttribute("banner", bannerService.searchBannerHL());
		return "FRONTEND_index";
	}

//////////////////////////////////////////FRONTEND-contact//////////////////////////////////////
	@GetMapping("/home/contact")
	public String contact(Model model) {
		model.addAttribute("serviceAll", doubleService.findAllService());
		return "FRONTEND_contact";
	}

	@PostMapping("/home/contact/questionSave")
	public String question(@ModelAttribute("question") Question question, Model model) {
		question.setCreated_at(new Date());
		questionService.saveQuestion(question);
		String tb = "Đã gửi câu hỏi. Xin cảm ơn!";
		model.addAttribute("tb", tb);
		return "FRONTEND_contact";
	}

//////////////////////////////////////////FRONTEND-introduct//////////////////////////////////////
	@GetMapping("/home/introduct/aboutUs")
	public String aboutUs(Model model) {
		model.addAttribute("serviceAll", doubleService.findAllService());
		return "introduct/chungtoi";
	}

	@GetMapping("/home/introduct/gt")
	public String gt(Model model) {
		model.addAttribute("serviceAll", doubleService.findAllService());
		return "introduct/giatri";
	}

	@GetMapping("/home/introduct/cn")
	public String cn(Model model) {
		model.addAttribute("serviceAll", doubleService.findAllService());
		return "introduct/connguoi";
	}

//////////////////////////////////////////FRONTEND-product//////////////////////////////////////
	@RequestMapping("/home/product")
	public String product(Model model) {

		return pageProductUser(model, 1, "name", "asc", null);
	}

	@GetMapping("/home/product/page/{pageNumber}")
	public String pageProductUser(Model model, @PathVariable("pageNumber") int currentPage,
			@Param("sortField") String sortField, @Param("sortDir") String sortDir, @Param("keyword") String keyword) {

		model.addAttribute("serviceAll", doubleService.findAllService());

		Page<Product> page = productService.getUserByName(currentPage, sortField, sortDir, keyword);
		long totalItems = page.getTotalElements();
		int totalPages = page.getTotalPages();

		List<Product> list = page.getContent();

		model.addAttribute("currentPage", currentPage);
		model.addAttribute("sortField", sortField);
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("list", list);
		model.addAttribute("sortDir", sortDir);
		model.addAttribute("keyword", keyword);

		String reverseSortDir = sortDir.equals("asc") ? "desc" : "asc";
		model.addAttribute("reverseSortDir", reverseSortDir);

		return "FRONTEND_product";
	}

//////////////////////////////////////////FRONTEND-new//////////////////////////////////////
	@RequestMapping("/home/new")
	public String newUser(Model model) {
		model.addAttribute("serviceAll", doubleService.findAllService());
		model.addAttribute("recruitment", recruitmentService.findAllRecruitment());
		return newUserPage(model, 1, "name", "asc", null);
	}

	@GetMapping("/home/new/page/{pageNumber}")
	public String newUserPage(Model model, @PathVariable("pageNumber") int currentPage,
			@Param("sortField") String sortField, @Param("sortDir") String sortDir, @Param("keyword") String keyword) {

		model.addAttribute("serviceAll", doubleService.findAllService());

		Page<News> page = newService.getNewsByName(currentPage, sortField, sortDir, keyword);
		long totalItems = page.getTotalElements();
		int totalPages = page.getTotalPages();

		List<News> list = page.getContent();

		model.addAttribute("currentPage", currentPage);
		model.addAttribute("sortField", sortField);
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("list", list);
		model.addAttribute("sortDir", sortDir);
		model.addAttribute("keyword", keyword);

		String reverseSortDir = sortDir.equals("asc") ? "desc" : "asc";
		model.addAttribute("reverseSortDir", reverseSortDir);

		return "FRONTEND_news";
	}

//////////////////////////////////////////FRONTEND-project//////////////////////////////////////
	@GetMapping("/home/project/{id}/{name}")
	public String getPro(@PathVariable int id, Model model) {
		model.addAttribute("project", projectService.search10Project());
		model.addAttribute("pro", projectService.searchPro(id));
		model.addAttribute("serviceAll", doubleService.findAllService());
		return "FRONTEND_project";
	}

//////////////////////////////////////////FRONTEND-service//////////////////////////////////////
	@GetMapping("/home/service/{id}/{alt}")
	public String getService(@PathVariable int id, Model model) {
		model.addAttribute("infoService", doubleService.searchInfoService(id));
		model.addAttribute("serviceAll", doubleService.findAllService());
		return "FRONTEND_service";
	}

//////////////////////////////////////////FRONTEND-recruitment//////////////////////////////////////

	@RequestMapping("/home/recruitment")
	public String recruitmentUser(Model model) {
		return recruitmentUserPage(model, 1, "id", "asc", null);
	}

	@GetMapping("/home/recruitment/page/{pageNumber}")
	public String recruitmentUserPage(Model model, @PathVariable("pageNumber") int currentPage,
			@Param("sortField") String sortField, @Param("sortDir") String sortDir, @Param("keyword") String keyword) {

		model.addAttribute("serviceAll", doubleService.findAllService());

		Page<Recruitment> page = recruitmentService.getRecruitmentByName(currentPage, sortField, sortDir, keyword);
		long totalItems = page.getTotalElements();
		int totalPages = page.getTotalPages();

		List<Recruitment> list = page.getContent();

		model.addAttribute("currentPage", currentPage);
		model.addAttribute("sortField", sortField);
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("list", list);
		model.addAttribute("sortDir", sortDir);
		model.addAttribute("keyword", keyword);

		String reverseSortDir = sortDir.equals("asc") ? "desc" : "asc";
		model.addAttribute("reverseSortDir", reverseSortDir);

		return "FRONTEND_recruitment";
	}

	@GetMapping("/home/recruitment/{id}/{alt}")
	public String recruitmentDetail(@PathVariable int id, Model model) {
		model.addAttribute("serviceAll", doubleService.findAllService());
		model.addAttribute("recruitmentDetail", recruitmentService.RecruitmentDetail(id));
		model.addAttribute("allRecruiment", recruitmentService.findAllRecruitment());
		return "FRONTEND_recruitment-detail";
	}

//////////////////////////////////////////FRONTEND-HRpolicies//////////////////////////////////////
	@GetMapping("/home/HRpolicies")
	public String hrpolicies(Model model) {
		model.addAttribute("serviceAll", doubleService.findAllService());
		model.addAttribute("hrpolicies", hrpoliciesService.search5HRpolicies());
		return "FRONTEND_HRpolicies";
	}

	@GetMapping("/home/award")
	public String award(Model model) {
		model.addAttribute("serviceAll", doubleService.findAllService());
		model.addAttribute("hrpolicies", hrpoliciesService.search5HRpolicies());
		model.addAttribute("award", awardService.findAllAwards());
		return "FRONTEND_award";
	}
	
	@GetMapping("/home/comment")
	public String createComment(Model model) {
		CustomerComment customerComment = new CustomerComment();
		customerComment.setCreated_at(new Date());
		model.addAttribute("customercomment", customerComment);
		return "FRONTEND_comment";
		
	}
	@PostMapping(value = "/home/Savecomment")
	public String saveComment(@ModelAttribute("customercomment") CustomerComment customercomment,Model model) {
		customercomment.setUpdated_at(new Date());
		customerCommentService.saveCustomerComment(customercomment);
		model.addAttribute("tb", "Đã gửi, cảm ơn khách hàng đã góp ý.");
		return "FRONTEND_comment";
	}

}
