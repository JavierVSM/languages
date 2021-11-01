package com.javier.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;
import com.javier.repositories.LanguageRepository;
import com.javier.models.Language;

@Service
public class LanguageService {
	private final LanguageRepository languageRepository;
	
	public LanguageService(LanguageRepository languageRepository) {
		this.languageRepository = languageRepository;
	}
	
	// returns all the books
	public List <Language> getAllLanguage() {
		return languageRepository.findAll();
	}
	
	// creates a book
	public Language createLanguage(Language lang){
		return languageRepository.save(lang);		
	}
	
	// retrieves a book	
	public Language findLanguage(Long id) {
		Optional<Language> optionalLanguage= languageRepository.findByIdentifier(id);
		if (optionalLanguage.isPresent() ){
			return optionalLanguage.get();
		}
		else {
			return null;
		}
	}
	
	// Update	
	public Language updateLanguage(Language language){
		return languageRepository.save(language);		
	}
	
	// Delete
	public void deleteLanguage(Long id) {
		Optional<Language> optionalLanguage= languageRepository.findByIdentifier(id);
		if (optionalLanguage.isPresent() ){
			languageRepository.deleteById(id);
		}	
	}
	
	
}