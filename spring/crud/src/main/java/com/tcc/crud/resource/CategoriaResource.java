package com.tcc.crud.resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.tcc.crud.model.Categoria;
import com.tcc.crud.repository.CategoriaRepository;

@RestController
@RequestMapping("/categorias")
public class CategoriaResource {
	
	@Autowired
	private CategoriaRepository categoriaRepository;
	
	
	@GetMapping
	public Iterable<Categoria> categorias() {
		return categoriaRepository.findAll();
	}
	
	@PostMapping
	public ResponseEntity<?> categorias(@RequestParam int n) {
		for(int i = 0; i < n; i++) {
			categoriaRepository.save(new Categoria("categoria_"+System.currentTimeMillis()));
		}
		return ResponseEntity.noContent().build();
	}
}
