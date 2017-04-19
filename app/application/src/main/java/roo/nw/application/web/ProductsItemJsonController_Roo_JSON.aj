// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.application.web;

import io.springlets.web.NotFoundException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;
import roo.nw.application.web.ProductsItemJsonController;
import roo.nw.model.Product;
import roo.nw.service.api.ProductService;

privileged aspect ProductsItemJsonController_Roo_JSON {
    
    declare @type: ProductsItemJsonController: @RestController;
    
    declare @type: ProductsItemJsonController: @RequestMapping(value = "/api/products/{product}", name = "ProductsItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param productService
     */
    @Autowired
    public ProductsItemJsonController.new(ProductService productService) {
        this.productService = productService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Product
     */
    @ModelAttribute
    public Product ProductsItemJsonController.getProduct(@PathVariable("product") Long id) {
        Product product = productService.findOne(id);
        if (product == null) {
            throw new NotFoundException(String.format("Product with identifier '%s' not found",id));
        }
        return product;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> ProductsItemJsonController.show(@ModelAttribute Product product) {
        return ResponseEntity.ok(product);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @return UriComponents
     */
    public static UriComponents ProductsItemJsonController.showURI(Product product) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(ProductsItemJsonController.class).show(product))
            .buildAndExpand(product.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedProduct
     * @param product
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> ProductsItemJsonController.update(@ModelAttribute Product storedProduct, @Valid @RequestBody Product product, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        product.setId(storedProduct.getId());
        getProductService().save(product);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> ProductsItemJsonController.delete(@ModelAttribute Product product) {
        getProductService().delete(product);
        return ResponseEntity.ok().build();
    }
    
}
