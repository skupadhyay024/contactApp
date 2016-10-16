	package com.skuera.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

/**
 * @author skuera
 *
 */
public class ContactInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
	
		 
	    @Override
	    protected Class<?>[] getRootConfigClasses() {
	        return new Class[] { ContactConfig.class };
	    }
	  
	    @Override
	    protected Class<?>[] getServletConfigClasses() {
	        return null;
	    }
	  
	    @Override
	    protected String[] getServletMappings() {
	        return new String[] { "/" };
	    }
	 
	}
