package com.niit.controller;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.service.ProductService;
@Controller
public class ProductController {
@Autowired
private ProductService productService;
public  ProductController()
{
	System.out.println("ProductController instantiated");
}
@RequestMapping("/getproductform")
public String getProductForm(Model model){
	List<Category> categories=productService.getAllCategories();
	model.addAttribute("categories",categories);		
	model.addAttribute("product",new Product());
	return "productform";
}
@RequestMapping("/saveproduct")
public String saveProduct(@Valid @ModelAttribute(name="product") Product product,BindingResult result,Model model){
if(result.hasErrors()){
	List<Category> categories=productService.getAllCategories();
	model.addAttribute("categories",categories);
	return"productform";
}
	productService.saveProduct(product);
return "redirect:/all/product/getallproducts";
}
@RequestMapping("/all/product/getallproducts")
public String getAllproducts(Model model){
	List<Product> products=productService.getAllProducts();
	model.addAttribute("products",products);
	return "productlist";
}
@RequestMapping("/all/product/viewproduct/{id}")
public String getproductById(int id,Model model){
	Product product=productService.getProductById(id);
	model.addAttribute("product",product);
	return "viewproduct";
	}
@RequestMapping("/admin/product/deleteproduct/{id}")
public String deleteProductById(@PathVariable int id)
{
	productService.deleteProduct(id);
	return "redirect:/all/product/getallproducts";
	}
@RequestMapping("/admin/product/geteditform/{id}")
public String getEditForm(@PathVariable int id,Model model)
{
	List<Category> categories=productService.getAllCategories();
		model.addAttribute("categories",categories);
	Product product=productService.getProductById(id);
	System.out.println(product);
	System.out.println(categories.size());
	model.addAttribute("ProductObj",product);
	return "editform";
}
@RequestMapping("/admin/product/editproduct")
public String editProduct(@Valid @ModelAttribute(name="productObj") Product product,BindingResult result,Model model)
{ if(result.hasErrors()){
	List<Category> categories=productService.getAllCategories();
	model.addAttribute("categories",categories);
	return "editform";
}
	productService.updateProduct(product);
	return "redirect:/all/product/getallproducts";
}
	
}

