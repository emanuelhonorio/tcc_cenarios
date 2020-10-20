const express = require('express')
const app = express()
const PORT = process.env.PORT || 8080

app.use(express.json())

require('./database')

const Categoria = require('./app/models/categoria')
const Produto = require('./app/models/produto')


app.get('/categorias', async (req, res) => {
  const categorias = await Categoria.findAll();

  return res.json(categorias);
});

app.post('/categorias', async (req, res) => {
  const { n } = req.query;

  for (let i = 0; i < n; i++) {
    await Categoria.create({ nome: 'categoria_' + Date.now().toString() });
  }

  return res.status(200).json();
});


app.get('/produtos', async (req, res) => {
  const produtos = await Produto.findAll({include: { association: 'categoria' }});
  
  return res.json(produtos);
});

app.post('/produtos', async (req, res) => {
  const produto = await Produto.create({ nome: 'produto_' + Date.now().toString(), preco: 50, descricao: 'descricao...', fk_categoria: 1 });
  return res.json({ produto });
});

app.get('/fib', (req, res) => {
  const { n } = req.query;

  let a = BigInt("0"), b = BigInt("1"), f = BigInt("1");

  for (let i = 2; i <= n; i++) {
    f = a + b;
    a = b;
    b = f;
  }

  return res.status(200).json(f.toString());
})


app.listen(PORT, () => {
  console.log(`Server is running at http://localhost:${PORT}`)
})