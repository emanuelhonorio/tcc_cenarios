const express = require('express')
const app = express()
const PORT = process.env.PORT || 3000

const categorias = require('./data/categorias.json')

app.get('/categorias', (req, res, next) => {
  return res.status(200).json(categorias)
})


app.listen(PORT, () => {
  console.log(`Server is running at http://localhost:${PORT}`)
})