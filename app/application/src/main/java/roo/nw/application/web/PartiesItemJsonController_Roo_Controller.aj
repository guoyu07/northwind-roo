// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.application.web;

import roo.nw.application.web.PartiesItemJsonController;
import roo.nw.service.api.PartyService;

privileged aspect PartiesItemJsonController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private PartyService PartiesItemJsonController.partyService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return PartyService
     */
    public PartyService PartiesItemJsonController.getPartyService() {
        return partyService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param partyService
     */
    public void PartiesItemJsonController.setPartyService(PartyService partyService) {
        this.partyService = partyService;
    }
    
}
