const { Model, DataTypes } = require("sequelize")

class Produto extends Model {

  static init(sequelize) {
    super.init({
      nome: {
        type: DataTypes.STRING,
        allowNull: false,
      },
      descricao: {
        type: DataTypes.STRING,
      },
      preco: {
        type: DataTypes.NUMBER,
        allowNull: false,
        defaultValue: 0,
      },
    }, { sequelize, tableName: "produtos", timestamps: false, })
  }

  static associate(models) {
    Produto.belongsTo(models.Categoria, { foreignKey: 'fk_categoria' ,  as: 'categoria' })
  }

}
 
module.exports = Produto;