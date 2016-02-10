INSERT INTO `Tab_resources` (`description`, `bonus_amout`) VALUES ('Wood', 40);
INSERT INTO `Tab_resources` (`description`, `bonus_amout`) VALUES ('Stone', 40);
INSERT INTO `Tab_resources` (`description`, `bonus_amout`) VALUES ('Iron', 40);
INSERT INTO `Tab_resources` (`description`, `bonus_amout`) VALUES ('Grain', 40);

INSERT INTO `Tab_producing` (`id`,`income`) VALUES (1,20);
INSERT INTO `Tab_producing` (`id`,`income`) VALUES (2,40);
INSERT INTO `Tab_producing` (`id`,`income`) VALUES (3,60);
INSERT INTO `Tab_producing` (`id`,`income`) VALUES (4,85);
INSERT INTO `Tab_producing` (`id`,`income`) VALUES (5,110);
INSERT INTO `Tab_producing` (`id`,`income`) VALUES (6,140);
INSERT INTO `Tab_producing` (`id`,`income`) VALUES (7,175);
INSERT INTO `Tab_producing` (`id`,`income`) VALUES (8,210);
INSERT INTO `Tab_producing` (`id`,`income`) VALUES (9,250);
INSERT INTO `Tab_producing` (`id`,`income`) VALUES (10,300);

INSERT INTO `mydb`.`Tab_storage_building`(`level`,`storage`) VALUES(1,2500);
INSERT INTO `mydb`.`Tab_storage_building`(`level`,`storage`) VALUES(2,5000);
INSERT INTO `mydb`.`Tab_storage_building`(`level`,`storage`) VALUES(3,9000);
INSERT INTO `mydb`.`Tab_storage_building`(`level`,`storage`) VALUES(4,1600);
INSERT INTO `mydb`.`Tab_storage_building`(`level`,`storage`) VALUES(5,2600);
INSERT INTO `mydb`.`Tab_storage_building`(`level`,`storage`) VALUES(6,4200);
INSERT INTO `mydb`.`Tab_storage_building`(`level`,`storage`) VALUES(7,6500);
INSERT INTO `mydb`.`Tab_storage_building`(`level`,`storage`) VALUES(8,10000);
INSERT INTO `mydb`.`Tab_storage_building`(`level`,`storage`) VALUES(9,14500);
INSERT INTO `mydb`.`Tab_storage_building`(`level`,`storage`) VALUES(10,20000);

INSERT INTO `mydb`.`Tab_storage_building`(`level`,`storage`) VALUES(1,500);
INSERT INTO `mydb`.`Tab_storage_building`(`level`,`storage`) VALUES(2,1000);
INSERT INTO `mydb`.`Tab_storage_building`(`level`,`storage`) VALUES(3,2000);
INSERT INTO `mydb`.`Tab_storage_building`(`level`,`storage`) VALUES(4,3000);
INSERT INTO `mydb`.`Tab_storage_building`(`level`,`storage`) VALUES(5,4500);
INSERT INTO `mydb`.`Tab_storage_building`(`level`,`storage`) VALUES(6,6000);
INSERT INTO `mydb`.`Tab_storage_building`(`level`,`storage`) VALUES(7,8000);
INSERT INTO `mydb`.`Tab_storage_building`(`level`,`storage`) VALUES(8,10000);
INSERT INTO `mydb`.`Tab_storage_building`(`level`,`storage`) VALUES(9,12000);
INSERT INTO `mydb`.`Tab_storage_building`(`level`,`storage`) VALUES(10,15000);

/*************************************************************
	- FARM 
*************************************************************/
INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Farm',1,50,0,0,40,15,15,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Farm',2,200,0,0,40,54,54,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Farm',3,400,200,0,40,360,360,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ( 'Farm',4,1400,600,0,40,2700,2700,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Farm',5,3500,1500,0,40,7560,7560,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Farm',6,6000,3000,0,40,12420,12420,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Farm',7,10000,5000,0,40,22500,22500,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Farm',8,16000,800,0,40,35820,35820,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Farm',9,25000,13000,0,40,53880,53880,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Farm',10,38000,20000,0,40,81720,81720,1);

/*************************************************************
	- WOODCUTTER
*************************************************************/
INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Woodcutter',1,50,0,0,40,15,15,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Woodcutter',2,200,0,0,40,54,54,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Woodcutter',3,400,200,0,40,360,360,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Woodcutter',4,1400,600,0,40,2700,2700,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Woodcutter',5,3500,1500,0,40,7560,7560,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Woodcutter',6,6000,3000,0,40,12420,12420,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Woodcutter',7,10000,5000,0,40,22500,22500,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Woodcutter',8,16000,800,0,40,35820,35820,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Woodcutter',9,25000,13000,0,40,53880,53880,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Woodcutter',10,38000,20000,0,40,81720,81720,1);

/*************************************************************
	- Iron mine
*************************************************************/
INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Iron mine',1,50,0,0,40,15,15,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Iron mine',2,200,0,0,40,54,54,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Iron mine',3,400,200,0,40,360,360,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Iron mine',4,1400,600,0,40,2700,2700,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Iron mine',5,3500,1500,0,40,7560,7560,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Iron mine',6,6000,3000,0,40,12420,12420,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Iron mine',7,10000,5000,0,40,22500,22500,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Iron mine',8,16000,800,0,40,35820,35820,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Iron mine',9,25000,13000,0,40,53880,53880,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Iron mine',10,38000,20000,0,40,81720,81720,1);

/*************************************************************
	- Quarry
*************************************************************/
INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Quarry',1,50,0,0,40,15,15,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Quarry',2,200,0,0,40,54,54,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES('Quarry',3,400,200,0,40,360,360,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Quarry',4,1400,600,0,40,2700,2700,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Quarry',5,3500,1500,0,40,7560,7560,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Quarry',6,6000,3000,0,40,12420,12420,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Quarry',7,10000,5000,0,40,22500,22500,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Quarry',8,16000,800,0,40,35820,35820,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Quarry',9,25000,13000,0,40,53880,53880,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Quarry',10,38000,20000,0,40,81720,81720,1);

/****************************************************
	- WEREHOUSE
****************************************************/
INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Werehouse',1,60,0,0,40,15,15,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Werehouse',2,150,0,0,40,36,36,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Werehouse',3,250,50,0,40,240,240,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Werehouse',4,500,150,0,40,1800,1800,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Werehouse',5,1600,400,0,40,4025,4025,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Werehouse',6,3000,1000,0,40,8100,8100,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Werehouse',7,6000,2000,0,40,14760,14760,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Werehouse',8,9600,4800,0,40,23825,23825,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Werehouse',9,15000,9000,0,40,35885,35885,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Werehouse',10,20000,13000,0,40,54425,54425,1);


/************************************************
	- HIDEOUT
*************************************************/
INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Hideout',1,0,50,0,40,15,15,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Hideout',2,0,200,0,40,36,36,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Hideout',3,0,600,0,40,240,240,1);


INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Hideout',4,0,1000,0,40,1800,1800,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Hideout',5,0,1500,0,40,4025,4025,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Hideout',6,0,2200,0,40,8100,8100,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Hideout',7,0,3500,0,40,14760,14760,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Hideout',8,0,4500,0,40,23825,23825,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Hideout',9,0,6000,0,40,35885,35885,1);

INSERT INTO `Tab_building` (`title`,`level`,`cost_wood`,`cost_stone`,`cost_iron`,`destruction_cost`,`build_time`,`destruction_time`,`rank_point`)
VALUES ('Hideout',10,0,8000,0,40,54425,54425,1);








