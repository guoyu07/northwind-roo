// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.application.web;

import roo.nw.application.web.RegionsItemCitiesThymeleafController;
import roo.nw.service.api.CityService;
import roo.nw.service.api.RegionService;

privileged aspect RegionsItemCitiesThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private RegionService RegionsItemCitiesThymeleafController.regionService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CityService RegionsItemCitiesThymeleafController.cityService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return RegionService
     */
    public RegionService RegionsItemCitiesThymeleafController.getRegionService() {
        return regionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param regionService
     */
    public void RegionsItemCitiesThymeleafController.setRegionService(RegionService regionService) {
        this.regionService = regionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CityService
     */
    public CityService RegionsItemCitiesThymeleafController.getCityService() {
        return cityService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cityService
     */
    public void RegionsItemCitiesThymeleafController.setCityService(CityService cityService) {
        this.cityService = cityService;
    }
    
}
