use transport;

/*driver table*/
create table `driver`(
	`dId` int auto_increment	,
	`dName` varchar(30),
	`dNIC` varchar(30) unique,
	`dAddress` varchar(50),
	`dPhone` varchar(10),
	`dEmail` varchar(30),
	`dPassword` varchar(20),
	`vehicleNo` varchar(20),
	`drivingLicenseNo` varchar(20),
	`vehicleType` varchar(20),

	constraint `person_pk` primary key (`dId`)
);

/*rider table*/
create table `rider`(
	`rId` int auto_increment	,
	`rName` varchar(30),
	`rNIC` varchar(30) unique,
    `rAddress` varchar(50),
	`rPhone` varchar(10),
	`rEmail` varchar(30),
	`rPassword` varchar(20),

	constraint `person_pk` primary key (`rId`)
);

/*ride table*/

create table `ride`(
	`rId` int auto_increment,
	`pickupL` varchar(20),
	`dropL` varchar(20),
	`rStatus` varchar(20),
    `vehiType` varchar(20),
	`fee` decimal(10,2) default 100,
    `payment` varchar(20),
	`requestT` time,
	`startT` time,
	`endT` time,
    `date` date,
	`riderId` int,
	`driverId` int,

	constraint `fee_ck` check(`fee`>0),
	constraint `ride_pk` primary key (`rId`),
	constraint `riderId_fk` foreign key (`riderId`) references `rider`(`rId`),
	constraint `driverId_fk` foreign key (`driverId`) references `driver`(`dId`)
);

/*admin table*/

create table `AdminUser`(
	`aId` int auto_increment,
	`username` varchar(30),
	`aPassword` varchar(30),

	constraint `admin_pk` primary key (`aId`)
);