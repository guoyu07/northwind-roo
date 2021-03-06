// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.application.web;

import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import java.util.Locale;
import javax.validation.Valid;
import org.apache.commons.lang3.StringUtils;
import org.joda.time.format.DateTimeFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponents;
import roo.nw.application.web.CategoriesItemThymeleafController;
import roo.nw.application.web.CategoriesItemThymeleafLinkFactory;
import roo.nw.model.Category;
import roo.nw.service.api.CategoryService;

privileged aspect CategoriesItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: CategoriesItemThymeleafController: @Controller;
    
    declare @type: CategoriesItemThymeleafController: @RequestMapping(value = "/categories/{category}", name = "CategoriesItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource CategoriesItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<CategoriesItemThymeleafController> CategoriesItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param categoryService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public CategoriesItemThymeleafController.new(CategoryService categoryService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setCategoryService(categoryService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(CategoriesItemThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource CategoriesItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void CategoriesItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<CategoriesItemThymeleafController> CategoriesItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void CategoriesItemThymeleafController.setItemLink(MethodLinkBuilderFactory<CategoriesItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Category
     */
    @ModelAttribute
    public Category CategoriesItemThymeleafController.getCategory(@PathVariable("category") Long id, Locale locale, HttpMethod method) {
        Category category = null;
        if (HttpMethod.PUT.equals(method)) {
            category = categoryService.findOneForUpdate(id);
        } else {
            category = categoryService.findOne(id);
        }
        
        if (category == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Category", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return category;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param category
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView CategoriesItemThymeleafController.show(@ModelAttribute Category category, Model model) {
        model.addAttribute("category", category);
        return new ModelAndView("categories/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param category
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView CategoriesItemThymeleafController.showInline(@ModelAttribute Category category, Model model) {
        model.addAttribute("category", category);
        return new ModelAndView("categories/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param dataBinder
     */
    @InitBinder("category")
    public void CategoriesItemThymeleafController.initCategoryBinder(WebDataBinder dataBinder) {
        dataBinder.setDisallowedFields("id");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void CategoriesItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        model.addAttribute("createdDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        model.addAttribute("modifiedDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void CategoriesItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param category
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView CategoriesItemThymeleafController.editForm(@ModelAttribute Category category, Model model) {
        populateForm(model);
        
        model.addAttribute("category", category);
        return new ModelAndView("categories/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param category
     * @param version
     * @param concurrencyControl
     * @param result
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView CategoriesItemThymeleafController.update(@Valid @ModelAttribute Category category, @RequestParam("version") Long version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, BindingResult result, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            
            return new ModelAndView("categories/edit");
        }
        // Concurrency control
        Category existingCategory = getCategoryService().findOne(category.getId());
        if(category.getVersion() != existingCategory.getVersion() && StringUtils.isEmpty(concurrencyControl)){
            populateForm(model);
            model.addAttribute("category", category);
            model.addAttribute("concurrency", true);
            return new ModelAndView("categories/edit");
        } else if(category.getVersion() != existingCategory.getVersion() && "discard".equals(concurrencyControl)){
            populateForm(model);
            model.addAttribute("category", existingCategory);
            model.addAttribute("concurrency", false);
            return new ModelAndView("categories/edit");
        } else if(category.getVersion() != existingCategory.getVersion() && "apply".equals(concurrencyControl)){
            // Update the version field to be able to override the existing values
            category.setVersion(existingCategory.getVersion());
        }
        Category savedCategory = getCategoryService().save(category);
        UriComponents showURI = getItemLink().to(CategoriesItemThymeleafLinkFactory.SHOW).with("category", savedCategory.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param category
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> CategoriesItemThymeleafController.delete(@ModelAttribute Category category) {
        getCategoryService().delete(category);
        return ResponseEntity.ok().build();
    }
    
}
