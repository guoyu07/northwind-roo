// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.application.web;

import roo.nw.application.web.CountriesItemRegionsThymeleafController;
import roo.nw.service.api.CountryService;
import roo.nw.service.api.RegionService;

privileged aspect CountriesItemRegionsThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CountryService CountriesItemRegionsThymeleafController.countryService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private RegionService CountriesItemRegionsThymeleafController.regionService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CountryService
     */
    public CountryService CountriesItemRegionsThymeleafController.getCountryService() {
        return countryService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param countryService
     */
    public void CountriesItemRegionsThymeleafController.setCountryService(CountryService countryService) {
        this.countryService = countryService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return RegionService
     */
    public RegionService CountriesItemRegionsThymeleafController.getRegionService() {
        return regionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param regionService
     */
    public void CountriesItemRegionsThymeleafController.setRegionService(RegionService regionService) {
        this.regionService = regionService;
    }
    
}
