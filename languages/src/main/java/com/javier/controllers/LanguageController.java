package com.javier.controllers;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.javier.models.Language;
import com.javier.services.LanguageService;

@Controller
public class LanguageController {
	private final LanguageService languageService;
	
	public LanguageController(LanguageService languageService){
		this.languageService=languageService;		
	}
	
	@RequestMapping ( value = "/", method= RequestMethod.GET)
	public String index(Model model){
		List <Language> languageList = languageService.getAllLanguage();
		model.addAttribute("languageList", languageList);
		return "index.jsp";	
	}
	
    @RequestMapping("/{identifier}")
    public String show(Model model,    		
    		@PathVariable("identifier") Long id) {
    	Language variable =languageService.findLanguage(id);
    	model.addAttribute("toDisplay", variable);
    	return "detail.jsp";
    }
    
    @RequestMapping("/edit/{identifier}")
    public String editDisplay(Model model,    		
    		@PathVariable("identifier") Long id) {
    	Language variable =languageService.findLanguage(id);
    	model.addAttribute("toDisplay", variable);
    	return "edit.jsp";
    }
		
	@RequestMapping( value = "/create", method = RequestMethod.POST )
	public String createLanguage(	
								@RequestParam( value = "nameForm" ) String newName,
								@RequestParam( value = "creatorForm" ) String newCreator,
								@RequestParam( value = "versionForm" ) String newVersion,
								RedirectAttributes redirectAttributes){
		boolean validation=true;  
		
		if (newName.length()<3) {
			redirectAttributes.addFlashAttribute( "errorMessage", "Name must be at least 3 characters." );
			validation= false;
		}
		if (newName.length()> 20) {
			redirectAttributes.addFlashAttribute( "errorMessage", "Name must be less than 20 characters." );
			validation= false;
		}
		if (newCreator.length()<3) {
			redirectAttributes.addFlashAttribute( "errorMessage", "Creator must be at least 3 characters." );
			validation= false;
		}
		if (newCreator.length()> 20) {
			redirectAttributes.addFlashAttribute( "errorMessage", "Creator must be less than 20 characters." );
			validation= false;
		}
		if (validation == true) {
			Language newLanguage = new Language (newName, newCreator, newVersion);
			languageService.createLanguage(newLanguage);	
		}
		return "redirect:/";
	}
	
	@RequestMapping( value = "/update", method = RequestMethod.POST )
	public String updateLanguage( 
			@RequestParam( value = "idFormEdit" ) long identifier, 
			@RequestParam( value = "nameFormEdit" ) String name,
			@RequestParam( value = "creatorFormEdit" ) String creator,
			@RequestParam( value = "versionFormEdit" ) String version,
			RedirectAttributes redirectAttributes) {
		
		boolean validationUpdate=true;  
		
		if (name.length()<3) {
			redirectAttributes.addFlashAttribute( "errorMessage", "The change could not be made. Name must be at least 3 characters." );
			validationUpdate= false;
		}
		
		if (name.length()> 20) {
			redirectAttributes.addFlashAttribute( "errorMessage", "The change could not be made. Name must be less than 20 characters." );
		}
		
		if (creator.length()<3) {
			redirectAttributes.addFlashAttribute( "errorMessage", "The change could not be made. Creator must be at least 3 characters." );
			validationUpdate= false;
		}
		
		if (creator.length()> 20) {
			redirectAttributes.addFlashAttribute( "errorMessage", "The change could not be made. Creator must be less than 20 characters." );
			validationUpdate= false;
		}	
	
		if (validationUpdate == true) {
			Language currentLanguage = languageService.findLanguage( identifier );
			currentLanguage.setName( name );
			currentLanguage.setCreator( creator );
			currentLanguage.setVersion( version );
			languageService.updateLanguage( currentLanguage );	
			redirectAttributes.addFlashAttribute( "errorMessage", "Successful change." );
		}
		return "redirect:/";
	}
	
    @RequestMapping(value="/delete/{identifier}", method=RequestMethod.DELETE)
    public String destroy(@PathVariable("identifier") Long id) {
        languageService.deleteLanguage(id);
        return "redirect:/";
    }
 
	
	
	
	
	
	
	
		

	

}
	
