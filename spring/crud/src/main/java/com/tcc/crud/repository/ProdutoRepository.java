package com.tcc.crud.repository;

import org.springframework.data.repository.CrudRepository;

import com.tcc.crud.model.Produto;

public interface ProdutoRepository extends CrudRepository<Produto, Long> {

}
