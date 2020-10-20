package com.tcc.crud.resource;

import java.math.BigInteger;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/fib")
public class FibResource {

	@GetMapping
	public String fib(@RequestParam long n) {
		BigInteger a = new BigInteger("0"), b = new BigInteger("1"), f = new BigInteger("1");

		for (long i = 2; i <= n; i++) {
			f = a.add(b);
			a = b;
			b = f;
		}

		return f.toString();
	}

}
