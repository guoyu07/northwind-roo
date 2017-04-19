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
import roo.nw.application.web.CitiesCollectionJsonController;
import roo.nw.model.City;
import roo.nw.service.api.CityService;

privileged aspect CitiesCollectionJsonController_Roo_JSON {
    
    declare @type: CitiesCollectionJsonController: @RestController;
    
    declare @type: CitiesCollectionJsonController: @RequestMapping(value = "/api/cities", name = "CitiesCollectionJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param cityService
     */
    @Autowired
    public CitiesCollectionJsonController.new(CityService cityService) {
        this.cityService = cityService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return ResponseEntity
     */
    @GetMapping(name = "list")
    public ResponseEntity<Page<City>> CitiesCollectionJsonController.list(GlobalSearch globalSearch, Pageable pageable) {
        
        Page<City> cities = getCityService().findAll(globalSearch, pageable);
        return ResponseEntity.ok(cities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return UriComponents
     */
    public static UriComponents CitiesCollectionJsonController.listURI() {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(CitiesCollectionJsonController.class).list(null, null))
            .build().encode();
    }
    
}
