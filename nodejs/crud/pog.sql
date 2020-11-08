
DROP DATABASE IF EXISTS pog;

CREATE DATABASE IF NOT EXISTS pog;

USE pog;

CREATE TABLE IF NOT EXISTS categorias (
	id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
  nome TEXT NOT NULL
) Engine = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS produtos (
	id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
  nome TEXT NOT NULL,
  preco DOUBLE NOT NULL,
  descricao TEXT,
  fk_categoria BIGINT(20) NOT NULL,

  FOREIGN KEY(fk_categoria) REFERENCES categorias(id)
) Engine = InnoDB DEFAULT CHARSET = utf8;

# Insert Categorias

INSERT INTO categorias(nome) values('categoria_1');
INSERT INTO categorias(nome) values('categoria_2');
INSERT INTO categorias(nome) values('categoria_3');
INSERT INTO categorias(nome) values('categoria_4');
INSERT INTO categorias(nome) values('categoria_5');
INSERT INTO categorias(nome) values('categoria_6');
INSERT INTO categorias(nome) values('categoria_7');
INSERT INTO categorias(nome) values('categoria_8');
INSERT INTO categorias(nome) values('categoria_9');
INSERT INTO categorias(nome) values('categoria_10');
INSERT INTO categorias(nome) values('categoria_11');
INSERT INTO categorias(nome) values('categoria_12');
INSERT INTO categorias(nome) values('categoria_13');
INSERT INTO categorias(nome) values('categoria_14');
INSERT INTO categorias(nome) values('categoria_15');
INSERT INTO categorias(nome) values('categoria_16');
INSERT INTO categorias(nome) values('categoria_17');
INSERT INTO categorias(nome) values('categoria_18');
INSERT INTO categorias(nome) values('categoria_19');
INSERT INTO categorias(nome) values('categoria_20');
INSERT INTO categorias(nome) values('categoria_21');
INSERT INTO categorias(nome) values('categoria_22');
INSERT INTO categorias(nome) values('categoria_23');
INSERT INTO categorias(nome) values('categoria_24');
INSERT INTO categorias(nome) values('categoria_25');
INSERT INTO categorias(nome) values('categoria_26');
INSERT INTO categorias(nome) values('categoria_27');
INSERT INTO categorias(nome) values('categoria_28');
INSERT INTO categorias(nome) values('categoria_29');
INSERT INTO categorias(nome) values('categoria_30');
INSERT INTO categorias(nome) values('categoria_31');
INSERT INTO categorias(nome) values('categoria_32');
INSERT INTO categorias(nome) values('categoria_33');
INSERT INTO categorias(nome) values('categoria_34');
INSERT INTO categorias(nome) values('categoria_35');
INSERT INTO categorias(nome) values('categoria_36');
INSERT INTO categorias(nome) values('categoria_37');
INSERT INTO categorias(nome) values('categoria_38');
INSERT INTO categorias(nome) values('categoria_39');
INSERT INTO categorias(nome) values('categoria_40');
INSERT INTO categorias(nome) values('categoria_41');
INSERT INTO categorias(nome) values('categoria_42');
INSERT INTO categorias(nome) values('categoria_43');
INSERT INTO categorias(nome) values('categoria_44');
INSERT INTO categorias(nome) values('categoria_45');
INSERT INTO categorias(nome) values('categoria_46');
INSERT INTO categorias(nome) values('categoria_47');
INSERT INTO categorias(nome) values('categoria_48');
INSERT INTO categorias(nome) values('categoria_49');
INSERT INTO categorias(nome) values('categoria_50');
INSERT INTO categorias(nome) values('categoria_51');
INSERT INTO categorias(nome) values('categoria_52');
INSERT INTO categorias(nome) values('categoria_53');
INSERT INTO categorias(nome) values('categoria_54');
INSERT INTO categorias(nome) values('categoria_55');
INSERT INTO categorias(nome) values('categoria_56');
INSERT INTO categorias(nome) values('categoria_57');
INSERT INTO categorias(nome) values('categoria_58');
INSERT INTO categorias(nome) values('categoria_59');
INSERT INTO categorias(nome) values('categoria_60');
INSERT INTO categorias(nome) values('categoria_61');
INSERT INTO categorias(nome) values('categoria_62');
INSERT INTO categorias(nome) values('categoria_63');
INSERT INTO categorias(nome) values('categoria_64');
INSERT INTO categorias(nome) values('categoria_65');
INSERT INTO categorias(nome) values('categoria_66');
INSERT INTO categorias(nome) values('categoria_67');
INSERT INTO categorias(nome) values('categoria_68');
INSERT INTO categorias(nome) values('categoria_69');
INSERT INTO categorias(nome) values('categoria_70');
INSERT INTO categorias(nome) values('categoria_71');
INSERT INTO categorias(nome) values('categoria_72');
INSERT INTO categorias(nome) values('categoria_73');
INSERT INTO categorias(nome) values('categoria_74');
INSERT INTO categorias(nome) values('categoria_75');
INSERT INTO categorias(nome) values('categoria_76');
INSERT INTO categorias(nome) values('categoria_77');
INSERT INTO categorias(nome) values('categoria_78');
INSERT INTO categorias(nome) values('categoria_79');
INSERT INTO categorias(nome) values('categoria_80');
INSERT INTO categorias(nome) values('categoria_81');
INSERT INTO categorias(nome) values('categoria_82');
INSERT INTO categorias(nome) values('categoria_83');
INSERT INTO categorias(nome) values('categoria_84');
INSERT INTO categorias(nome) values('categoria_85');
INSERT INTO categorias(nome) values('categoria_86');
INSERT INTO categorias(nome) values('categoria_87');
INSERT INTO categorias(nome) values('categoria_88');
INSERT INTO categorias(nome) values('categoria_89');
INSERT INTO categorias(nome) values('categoria_90');
INSERT INTO categorias(nome) values('categoria_91');
INSERT INTO categorias(nome) values('categoria_92');
INSERT INTO categorias(nome) values('categoria_93');
INSERT INTO categorias(nome) values('categoria_94');
INSERT INTO categorias(nome) values('categoria_95');
INSERT INTO categorias(nome) values('categoria_96');
INSERT INTO categorias(nome) values('categoria_97');
INSERT INTO categorias(nome) values('categoria_98');
INSERT INTO categorias(nome) values('categoria_99');
INSERT INTO categorias(nome) values('categoria_100');

# Insert Produtos

INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_1', 2883, 'descricao...', 68);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_2', 4887, 'descricao...', 45);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_3', 2082, 'descricao...', 19);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_4', 1274, 'descricao...', 31);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_5', 4164, 'descricao...', 57);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_6', 1237, 'descricao...', 55);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_7', 1327, 'descricao...', 82);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_8', 764, 'descricao...', 73);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_9', 4916, 'descricao...', 62);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_10', 3437, 'descricao...', 100);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_11', 74, 'descricao...', 30);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_12', 17, 'descricao...', 81);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_13', 4264, 'descricao...', 16);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_14', 1754, 'descricao...', 79);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_15', 3486, 'descricao...', 95);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_16', 1768, 'descricao...', 4);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_17', 3680, 'descricao...', 34);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_18', 947, 'descricao...', 28);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_19', 2951, 'descricao...', 99);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_20', 3980, 'descricao...', 63);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_21', 1075, 'descricao...', 17);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_22', 2701, 'descricao...', 55);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_23', 4437, 'descricao...', 78);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_24', 3277, 'descricao...', 70);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_25', 3873, 'descricao...', 80);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_26', 3705, 'descricao...', 98);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_27', 2451, 'descricao...', 60);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_28', 30, 'descricao...', 4);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_29', 1826, 'descricao...', 92);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_30', 1232, 'descricao...', 37);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_31', 4249, 'descricao...', 45);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_32', 951, 'descricao...', 78);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_33', 2314, 'descricao...', 98);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_34', 1068, 'descricao...', 70);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_35', 2371, 'descricao...', 41);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_36', 3354, 'descricao...', 8);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_37', 2141, 'descricao...', 44);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_38', 4539, 'descricao...', 41);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_39', 1340, 'descricao...', 30);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_40', 1042, 'descricao...', 91);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_41', 1862, 'descricao...', 98);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_42', 4028, 'descricao...', 38);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_43', 700, 'descricao...', 80);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_44', 98, 'descricao...', 38);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_45', 4270, 'descricao...', 44);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_46', 1016, 'descricao...', 87);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_47', 4733, 'descricao...', 80);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_48', 4592, 'descricao...', 32);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_49', 2927, 'descricao...', 16);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_50', 1261, 'descricao...', 12);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_51', 4619, 'descricao...', 26);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_52', 1405, 'descricao...', 43);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_53', 1249, 'descricao...', 18);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_54', 1510, 'descricao...', 27);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_55', 1679, 'descricao...', 17);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_56', 3575, 'descricao...', 92);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_57', 4985, 'descricao...', 93);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_58', 2547, 'descricao...', 63);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_59', 4055, 'descricao...', 68);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_60', 2011, 'descricao...', 38);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_61', 1490, 'descricao...', 79);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_62', 4980, 'descricao...', 50);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_63', 1839, 'descricao...', 46);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_64', 4582, 'descricao...', 56);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_65', 447, 'descricao...', 23);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_66', 229, 'descricao...', 27);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_67', 100, 'descricao...', 26);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_68', 2974, 'descricao...', 10);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_69', 364, 'descricao...', 32);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_70', 1877, 'descricao...', 90);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_71', 4195, 'descricao...', 38);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_72', 3219, 'descricao...', 6);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_73', 386, 'descricao...', 82);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_74', 4668, 'descricao...', 88);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_75', 2863, 'descricao...', 31);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_76', 4324, 'descricao...', 25);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_77', 1153, 'descricao...', 22);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_78', 841, 'descricao...', 9);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_79', 3251, 'descricao...', 24);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_80', 2342, 'descricao...', 94);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_81', 3371, 'descricao...', 15);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_82', 2612, 'descricao...', 51);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_83', 1918, 'descricao...', 2);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_84', 926, 'descricao...', 82);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_85', 1417, 'descricao...', 100);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_86', 10, 'descricao...', 31);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_87', 3326, 'descricao...', 68);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_88', 2573, 'descricao...', 76);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_89', 3588, 'descricao...', 49);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_90', 42, 'descricao...', 22);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_91', 2031, 'descricao...', 9);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_92', 4687, 'descricao...', 56);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_93', 3627, 'descricao...', 40);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_94', 4728, 'descricao...', 6);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_95', 3874, 'descricao...', 30);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_96', 885, 'descricao...', 51);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_97', 4029, 'descricao...', 63);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_98', 4477, 'descricao...', 81);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_99', 2375, 'descricao...', 97);
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_100', 2492, 'descricao...', 58);