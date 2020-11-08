package com.tcc.crud.resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tcc.crud.model.Categoria;
import com.tcc.crud.model.Produto;
import com.tcc.crud.repository.ProdutoRepository;

@RestController
@RequestMapping("/produtos")
public class ProdutoResource {

	@Autowired
	private ProdutoRepository produtoRepository;

	@GetMapping
	public Iterable<Produto> listProdutos() {
		return produtoRepository.findAll();
	}

}
