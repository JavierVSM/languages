package com.javier.repositories;
import java.util.List;
import java.util.Optional;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.javier.models.Language;

@Repository 
public interface LanguageRepository extends CrudRepository <Language, Long >{
	List <Language> findAll();
	Optional <Language> findByIdentifier(long id);
	Language save (Language language);
}
