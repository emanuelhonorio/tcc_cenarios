const express = require('express')
const app = express()
const PORT = process.env.PORT || 8080

app.use(express.json())

require('./database')

const Produto = require('./app/models/produto')

app.get('/produtos', async (req, res) => {
  const produtos = await Produto.findAll({include: { association: 'categoria' }});

  return res.json(produtos);
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
