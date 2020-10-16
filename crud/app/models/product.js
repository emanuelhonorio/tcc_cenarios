module.exports = (sequelize, DataTypes) => {
  
  const Produto = sequelize.define('Produto', {
    nome: DataTypes.STRING,
    descricao: DataTypes.STRING,
    preco: DataType.NUMBER,
  }, { tableName="produtos" });

  Produto.belongsTo(Categoria, { as: 'categorias' })

  return Produto;
}