// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.application.web;

import io.springlets.data.domain.GlobalSearch;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;
import roo.nw.application.web.RegionsCollectionJsonController;
import roo.nw.model.Region;
import roo.nw.service.api.RegionService;

privileged aspect RegionsCollectionJsonController_Roo_JSON {
    
    declare @type: RegionsCollectionJsonController: @RestController;
    
    declare @type: RegionsCollectionJsonController: @RequestMapping(value = "/api/regions", name = "RegionsCollectionJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param regionService
     */
    @Autowired
    public RegionsCollectionJsonController.new(RegionService regionService) {
        this.regionService = regionService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return ResponseEntity
     */
    @GetMapping(name = "list")
    public ResponseEntity<Page<Region>> RegionsCollectionJsonController.list(GlobalSearch globalSearch, Pageable pageable) {
        
        Page<Region> regions = getRegionService().findAll(globalSearch, pageable);
        return ResponseEntity.ok(regions);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return UriComponents
     */
    public static UriComponents RegionsCollectionJsonController.listURI() {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(RegionsCollectionJsonController.class).list(null, null))
            .build().encode();
    }
    
}
