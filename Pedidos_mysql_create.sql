CRIAR TABELA `Pedidos` (
	`Pedido_ID` DECIMAL(250) NÃO NULO,
	`Cliente_ID` varchar(255) NOT NULL,
	`Data_Pedido` DATE(8) NOT NULL,
	`Catão_De_Credito` FLOAT NOT NULL,
	`Numero_Do_Catão` DECIMAL(16) NÃO NULO,
	`Titular_Catão` DECIMAL(255) NÃO NULO,
	CHAVE PRIMÁRIA (`Pedido_ID`)
);

CREATE TABLE `Itens_de_Pedido` (
	`Item_ID` DECIMAL(250) NÃO NULO,
	`Pedido_ID` DECIMAL(250) NÃO NULO,
	`Pedido_ID` DECIMAL(250) NÃO NULO,
	`Quantidade` DECIMAL(255) NÃO NULO
);

ALTER TABLE `Pedidos` ADD CONSTRAINT `Pedidos_fk0` FOREIGN KEY (`Pedido_ID`) REFERÊNCIAS `Itens_de_Pedido`(`Item_ID`);



