
const { Sequelize } = require("sequelize");
const sequelizeConfig = require("../config/database");
const Categoria = require('../app/models/categoria')
const Produto = require('../app/models/produto')

const models = [Categoria, Produto];

class Database {
  constructor() {
    this.initSequelize();
  }

  initSequelize() {
    this.connection = new Sequelize(sequelizeConfig);

    models.map((model) => model.init(this.connection));
    models.map(
      (model) => model.associate && model.associate(this.connection.models)
    );
  }
}

module.exports = new Database();