const { Model, DataTypes } = require('sequelize');


class Categoria extends Model {
  static init(sequelize) {
    super.init({
      nome: {
        type: DataTypes.STRING,
        allowNull: false,
      },
    }, { sequelize, tableName: "categorias", timestamps: false })
  }
}

module.exports =  Categoria;