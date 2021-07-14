package vn.nextsol.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.repository.query.Param;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import vn.nextsol.entity.Role;
import vn.nextsol.entity.User;
import vn.nextsol.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

//////////////////////////////////////////BACKEND-user//////////////////////////////////////

	@RequestMapping("/admin/user")
	public String UserAdmin(Model model) {
		return userAdminPage(model, 1, "username", "asc", null);
	}

	@GetMapping("/admin/user/page/{pageNumber}")
	public String userAdminPage(Model model, @PathVariable("pageNumber") int currentPage,
			@Param("sortField") String sortField, @Param("sortDir") String sortDir, @Param("keyword") String keyword) {

		Page<User> page = userService.getUserByName(currentPage, sortField, sortDir, keyword);
		long totalItems = page.getTotalElements();
		int totalPages = page.getTotalPages();

		List<User> list = page.getContent();

		model.addAttribute("currentPage", currentPage);
		model.addAttribute("sortField", sortField);
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("list", list);
		model.addAttribute("sortDir", sortDir);
		model.addAttribute("keyword", keyword);

		String reverseSortDir = sortDir.equals("asc") ? "desc" : "asc";
		model.addAttribute("reverseSortDir", reverseSortDir);

		return "user";
	}

	@GetMapping("admin/user/create")
	public String create(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		return "user_form";
	}

	@PostMapping(value = "/admin/user/save")
	public String saveEvent(Model model, @ModelAttribute("user") User user,
			@RequestParam(value = "password") String password, @RequestParam(value = "username") String username,
			@RequestParam(value = "fullname") String fullname, @RequestParam(value = "email") String email,
			@RequestParam(value = "repass") String repass, @RequestParam(value = "roles") Set<Role> roles) {

		if (userService.chechMail(email) == null) {
			if (userService.checkU(username) == null) {
				if (password.equals(repass)) {
					BCryptPasswordEncoder mahoa = new BCryptPasswordEncoder();
					user.setPassword(mahoa.encode(password));
					user.setValid(1);
					user.setRoles(roles);
					userService.save(user);
					return "redirect:/admin/user";
				}
				model.addAttribute("tb", "Mật khẩu nhập lại không đúng. Vui lòng nhập lại!");
				return create(model);
			}
			model.addAttribute("tb", "Tên tài khoản đã được sử dụng. Vui lòng chọn tên khác!");
			return create(model);
		}

		model.addAttribute("tb", "Email này đã được người khác sử dụng. Vui lòng thử với email khác!");
		return create(model);
	}

	@GetMapping(value = "admin/user/{id}/edit")
	public String updateUser(@PathVariable long id, Model model) {
		model.addAttribute("user", userService.findOne(id));
		return "user_form_update";
	}

	@PostMapping("admin/user/saveUpdate")
	public String update(@RequestParam(value = "id") int id, @RequestParam(value = "fullname") String fullname,
			@RequestParam(value = "email") String email, @RequestParam(value = "username") String username,
			@RequestParam(value = "password") String password, @RequestParam(value = "create_by") String create_by,
			@RequestParam(value = "create_date") String create_date) {
		User user = userService.findOne(id);
		if (password != null && !password.trim().isEmpty()) {
			BCryptPasswordEncoder mahoa = new BCryptPasswordEncoder();
			user.setPassword(mahoa.encode(password));
		}

		user.setFullname(fullname);
		user.setEmail(email);
		user.setUsername(username);
		user.setCreate_by(create_by);
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			Date date = dateFormat.parse(create_date);
			user.setCreate_date(date);
		} catch (Exception e) {
		}
		userService.update(user);
		return "redirect:/admin/user";
	}

	@GetMapping("/admin/user/{id}/delete")
	public String delete(@PathVariable long id, RedirectAttributes redirect) {
		User user = userService.findOne(id);
		user.setValid(0);
		userService.delete(user);
		redirect.addFlashAttribute("success", "Deleted successfully!");
		return "redirect:/admin/user";
	}

	@GetMapping("/admin/userRole/{id}")
	public String addrole(@PathVariable long id, Model model) {
		model.addAttribute("user", userService.findOne(id));
		return "role_form";
	}

	@PostMapping(value = "/admin/role/save")
	public String update(@RequestParam(value = "id") int id, @RequestParam(value = "roles") Set<Role> roles) {
		User user = userService.findOne(id);
		if (roles != null) {
			user.setRoles(roles);
		}
		userService.update(user);
		return "redirect:/admin/user";
	}

}