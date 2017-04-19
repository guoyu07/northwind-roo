// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.application.web;

import io.springlets.web.mvc.util.MethodLinkFactory;
import io.springlets.web.mvc.util.SpringletsMvcUriComponentsBuilder;
import java.util.Map;
import org.springframework.stereotype.Component;
import org.springframework.web.util.UriComponents;
import roo.nw.application.web.CountriesItemThymeleafController;
import roo.nw.application.web.CountriesItemThymeleafLinkFactory;

privileged aspect CountriesItemThymeleafLinkFactory_Roo_LinkFactory {
    
    declare parents: CountriesItemThymeleafLinkFactory implements MethodLinkFactory<CountriesItemThymeleafController>;
    
    declare @type: CountriesItemThymeleafLinkFactory: @Component;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CountriesItemThymeleafLinkFactory.SHOW = "show";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CountriesItemThymeleafLinkFactory.SHOWINLINE = "showInline";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<CountriesItemThymeleafController> CountriesItemThymeleafLinkFactory.getControllerClass() {
        return CountriesItemThymeleafController.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param methodName
     * @param parameters
     * @param pathVariables
     * @return UriComponents
     */
    public UriComponents CountriesItemThymeleafLinkFactory.toUri(String methodName, Object[] parameters, Map<String, Object> pathVariables) {
        if (methodName.equals(SHOW)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).show(null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(SHOWINLINE)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).showInline(null, null)).buildAndExpand(pathVariables);
        }
        throw new IllegalArgumentException("Invalid method name: " + methodName);
    }
    
}
