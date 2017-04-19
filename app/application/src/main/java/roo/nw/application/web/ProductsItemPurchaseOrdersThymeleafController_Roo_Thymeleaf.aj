// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.application.web;

import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.web.datatables.ConvertedDatatablesData;
import io.springlets.data.web.datatables.Datatables;
import io.springlets.data.web.datatables.DatatablesColumns;
import io.springlets.data.web.datatables.DatatablesPageable;
import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;
import org.joda.time.format.DateTimeFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.core.convert.ConversionService;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import roo.nw.application.web.ProductsCollectionThymeleafController;
import roo.nw.application.web.ProductsCollectionThymeleafLinkFactory;
import roo.nw.application.web.ProductsItemPurchaseOrdersThymeleafController;
import roo.nw.model.Product;
import roo.nw.model.PurchaseOrder;
import roo.nw.service.api.ProductService;
import roo.nw.service.api.PurchaseOrderService;

privileged aspect ProductsItemPurchaseOrdersThymeleafController_Roo_Thymeleaf {
    
    declare @type: ProductsItemPurchaseOrdersThymeleafController: @Controller;
    
    declare @type: ProductsItemPurchaseOrdersThymeleafController: @RequestMapping(value = "/products/{product}/purchaseOrders", name = "ProductsItemPurchaseOrdersThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource ProductsItemPurchaseOrdersThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<ProductsCollectionThymeleafController> ProductsItemPurchaseOrdersThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ConversionService ProductsItemPurchaseOrdersThymeleafController.conversionService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param productService
     * @param purchaseOrderService
     * @param conversionService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public ProductsItemPurchaseOrdersThymeleafController.new(ProductService productService, PurchaseOrderService purchaseOrderService, ConversionService conversionService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setProductService(productService);
        setPurchaseOrderService(purchaseOrderService);
        setConversionService(conversionService);
        setMessageSource(messageSource);
        setCollectionLink(linkBuilder.of(ProductsCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource ProductsItemPurchaseOrdersThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void ProductsItemPurchaseOrdersThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<ProductsCollectionThymeleafController> ProductsItemPurchaseOrdersThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void ProductsItemPurchaseOrdersThymeleafController.setCollectionLink(MethodLinkBuilderFactory<ProductsCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService ProductsItemPurchaseOrdersThymeleafController.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void ProductsItemPurchaseOrdersThymeleafController.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Product
     */
    @ModelAttribute
    public Product ProductsItemPurchaseOrdersThymeleafController.getProduct(@PathVariable("product") Long id, Locale locale, HttpMethod method) {
        Product product = null;
        if (HttpMethod.PUT.equals(method)) {
            product = productService.findOneForUpdate(id);
        } else {
            product = productService.findOne(id);
        }
        
        if (product == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Product", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return product;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ProductsItemPurchaseOrdersThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        model.addAttribute("orderDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ProductsItemPurchaseOrdersThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param datatablesColumns
     * @param search
     * @param pageable
     * @param draw
     * @return ResponseEntity
     */
    @GetMapping(name = "datatables", produces = Datatables.MEDIA_TYPE, value = "/dt")
    @ResponseBody
    public ResponseEntity<ConvertedDatatablesData<PurchaseOrder>> ProductsItemPurchaseOrdersThymeleafController.datatables(@ModelAttribute Product product, DatatablesColumns datatablesColumns, GlobalSearch search, DatatablesPageable pageable, @RequestParam("draw") Integer draw) {
        
        Page<PurchaseOrder> purchaseOrders = getPurchaseOrderService().findByProduct(product, search, pageable);
        long totalPurchaseOrdersCount = getPurchaseOrderService().countByProduct(product);
        ConvertedDatatablesData<PurchaseOrder> data =  new ConvertedDatatablesData<PurchaseOrder>(purchaseOrders, totalPurchaseOrdersCount, draw, getConversionService(), datatablesColumns);
        return ResponseEntity.ok(data);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/create-form", name = "createForm")
    public ModelAndView ProductsItemPurchaseOrdersThymeleafController.createForm(@ModelAttribute Product product, Model model) {
        populateForm(model);
        model.addAttribute("purchaseOrder", new PurchaseOrder());
        return new ModelAndView("products/purchaseOrders/create");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param purchaseOrdersToRemove
     * @return ResponseEntity
     */
    @DeleteMapping(name = "removeFromPurchaseOrders", value = "/{purchaseOrdersToRemove}")
    @ResponseBody
    public ResponseEntity<?> ProductsItemPurchaseOrdersThymeleafController.removeFromPurchaseOrders(@ModelAttribute Product product, @PathVariable("purchaseOrdersToRemove") Long purchaseOrdersToRemove) {
        getProductService().removeFromPurchaseOrders(product,Collections.singleton(purchaseOrdersToRemove));
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param purchaseOrdersToRemove
     * @return ResponseEntity
     */
    @DeleteMapping(name = "removeFromPurchaseOrdersBatch", value = "/batch/{purchaseOrdersToRemove}")
    @ResponseBody
    public ResponseEntity<?> ProductsItemPurchaseOrdersThymeleafController.removeFromPurchaseOrdersBatch(@ModelAttribute Product product, @PathVariable("purchaseOrdersToRemove") Collection<Long> purchaseOrdersToRemove) {
        getProductService().removeFromPurchaseOrders(product, purchaseOrdersToRemove);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param purchaseOrders
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PostMapping(name = "create")
    public ModelAndView ProductsItemPurchaseOrdersThymeleafController.create(@ModelAttribute Product product, @RequestParam(value = "purchaseOrdersIds", required = false) List<Long> purchaseOrders, @RequestParam("parentVersion") Long version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Remove empty values
        if (purchaseOrders != null) {
            for (Iterator<Long> iterator = purchaseOrders.iterator(); iterator.hasNext();) {
                if (iterator.next() == null) {
                    iterator.remove();
                }
            }
        }
        // Concurrency control
        if(version != product.getVersion() && StringUtils.isEmpty(concurrencyControl)){
            populateForm(model);
            // Obtain the selected books and include them in the author that will be 
            // included in the view
            if (purchaseOrders != null) {
                product.setPurchaseOrders(new HashSet<PurchaseOrder>(getPurchaseOrderService().findAll(purchaseOrders)));
            }else{
                product.setPurchaseOrders(new HashSet<PurchaseOrder>());
            }
            // Reset the version to prevent update
             product.setVersion(version);
            // Include the updated element in the model
            model.addAttribute("product", product);
            model.addAttribute("concurrency", true);
            return new ModelAndView("products/purchaseOrders/create");
        }else if(version != product.getVersion() && "discard".equals(concurrencyControl)){
            populateForm(model);
            // Provide the original element from the Database
            model.addAttribute("product", product);
            model.addAttribute("concurrency", false);
            return new ModelAndView("products/purchaseOrders/create");
        }
        getProductService().setPurchaseOrders(product,purchaseOrders);
        return new ModelAndView("redirect:" + getCollectionLink().to(ProductsCollectionThymeleafLinkFactory.LIST).toUriString());
    }
    
}
