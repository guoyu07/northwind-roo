// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.application.web;

import io.springlets.data.domain.GlobalSearch;
import java.util.Collection;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;
import roo.nw.application.web.SoldProductsCollectionJsonController;
import roo.nw.application.web.SoldProductsItemJsonController;
import roo.nw.model.SoldProduct;
import roo.nw.service.api.SoldProductService;

privileged aspect SoldProductsCollectionJsonController_Roo_JSON {
    
    declare @type: SoldProductsCollectionJsonController: @RestController;
    
    declare @type: SoldProductsCollectionJsonController: @RequestMapping(value = "/api/soldproducts", name = "SoldProductsCollectionJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param soldProductService
     */
    @Autowired
    public SoldProductsCollectionJsonController.new(SoldProductService soldProductService) {
        this.soldProductService = soldProductService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return ResponseEntity
     */
    @GetMapping(name = "list")
    public ResponseEntity<Page<SoldProduct>> SoldProductsCollectionJsonController.list(GlobalSearch globalSearch, Pageable pageable) {
        
        Page<SoldProduct> soldProducts = getSoldProductService().findAll(globalSearch, pageable);
        return ResponseEntity.ok(soldProducts);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return UriComponents
     */
    public static UriComponents SoldProductsCollectionJsonController.listURI() {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(SoldProductsCollectionJsonController.class).list(null, null))
            .build().encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param soldProduct
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(name = "create")
    public ResponseEntity<?> SoldProductsCollectionJsonController.create(@Valid @RequestBody SoldProduct soldProduct, BindingResult result) {
        
        if (soldProduct.getId() != null || soldProduct.getVersion() != null) {        
            return ResponseEntity.status(HttpStatus.CONFLICT).build();
        }
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        SoldProduct newSoldProduct = getSoldProductService().save(soldProduct);
        UriComponents showURI = SoldProductsItemJsonController.showURI(newSoldProduct);
        
        return ResponseEntity.created(showURI.toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param soldProducts
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(value = "/batch", name = "createBatch")
    public ResponseEntity<?> SoldProductsCollectionJsonController.createBatch(@Valid @RequestBody Collection<SoldProduct> soldProducts, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getSoldProductService().save(soldProducts);
        
        return ResponseEntity.created(listURI().toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param soldProducts
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(value = "/batch", name = "updateBatch")
    public ResponseEntity<?> SoldProductsCollectionJsonController.updateBatch(@Valid @RequestBody Collection<SoldProduct> soldProducts, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getSoldProductService().save(soldProducts);
        
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return ResponseEntity
     */
    @DeleteMapping(value = "/batch/{ids}", name = "deleteBatch")
    public ResponseEntity<?> SoldProductsCollectionJsonController.deleteBatch(@PathVariable("ids") Collection<Long> ids) {
        
        getSoldProductService().delete(ids);
        
        return ResponseEntity.ok().build();
    }
    
}