create database Projekti
Use ProjektiFinal

create table Kamarieri(
ID_Kamarieri int primary key,
Emri varchar(255) not null,   
Mbiemri varchar(255) not null,
Adresa varchar(50) not null,
Menaxheri_ID int foreign key references Kamarieri(ID_Kamarieri)
)

create table NrTel_Kamarieri( 
Nr_Telefonit int primary key,   
Operatori varchar(255),
ID_Kamarieri int foreign key references Kamarieri(ID_Kamarieri)
)

create table Klienti( 
ID_Klienti int primary key,
Emri varchar(255) not null,
Mbiemri varchar(255) not null,
ID_Kamarieri int foreign key references Kamarieri(ID_Kamarieri)
)

create table NrTel_klienti(
Nr_Telefonit int primary key,
Operatori varchar(255),
ID_Klienti int foreign key references Klienti(ID_Klienti)
)

create table Recepsionisti( 
ID_Recepsionisti int primary key,
Emri varchar(255) not null,
Mbiemri varchar(255) not null,
Adresa varchar(50) not null,
)

create table NrTel_Recepsionisti(
Nr_Telefonit int primary key,
Operatori varchar(255),
ID_Recepsionisti int foreign key references Recepsionisti(ID_Recepsionisti)
)


create table Rezervon( 
ID_Klientii int primary key,
Koha_rezervimit time,
Nr_Personave int,
ID_Klienti int foreign key references Klienti(ID_Klienti),
ID_Recepsionisti int foreign key references Recepsionisti(ID_Recepsionisti)
)



create table Shanki( 
ID_Shanki int primary key
)

create table Porosia( 
Nr_Porosis int primary key,
Koha_porosis time,
ID_Kamarieri int foreign key references Kamarieri(ID_Kamarieri),
ID_Shanki int foreign key references Shanki(ID_Shanki)
)

create table Menaxheri( 
ID_Menaxheri int primary key,
Emri varchar(255) not null,
Mbiemri varchar(255) not null,
Adresa varchar(50) not null,
)

create table NrTel_Menaxheri(
Nr_Telefonit int primary key,
Operatori varchar(255),
ID_Menaxheri int foreign key references Menaxheri(ID_Menaxheri)
)

create table Pagesa( 
ID_Klientii int primary key,
Nr_tavolines int,
kesh money,
POS money,
ID_Menaxheri int foreign key references Menaxheri(ID_Menaxheri),
ID_Klienti int foreign key references Klienti(ID_Klienti)
)

CREATE TABLE Bari( 
ID_Bari int primary key,
Orari_i_ndrrimit varchar(255),
Nr_Produkteve varchar(255),
ID_Shanki int foreign key references Shanki(ID_Shanki)
)

CREATE TABLE Kontrollon(
ID_Menaxheri INT FOREIGN KEY REFERENCES Menaxheri(ID_Menaxheri),
Nr_Porosis INT FOREIGN KEY REFERENCES Porosia(Nr_Porosis),
ID_Kamarieri INT FOREIGN KEY REFERENCES Kamarieri(ID_Kamarieri),
ID_Shanki INT FOREIGN KEY REFERENCES Shanki(ID_Shanki),
PRIMARY KEY (ID_Menaxheri, Nr_Porosis, ID_Kamarieri, ID_Shanki)
)

create table Bartenderi( 
ID_Bartenderi int primary key,
Emri varchar(255) not null,
Mbiemri varchar(255) not null,
Adresa varchar(50) not null,
ID_Bari int foreign key references Bari(ID_Bari)
)

create table NrTel_Bartenderi(
Nr_Telefonit int primary key,
Operatori varchar(255),
ID_Bartenderi int foreign key references Bartenderi(ID_Bartenderi)
) 

CREATE TABLE Kuzhina( 
ID_Kuzhina int primary key,
Orari_i_ndrrimit varchar(255),
Nr_Produkteve varchar(255),
ID_Shanki int foreign key references Shanki(ID_Shanki)
)

create table Kuzhinieri(
ID_Kuzhinieri int primary key,
Emri varchar(255) not null,
Mbiemri varchar(255) not null,
Adresa varchar(50) not null,
ID_Kuzhina int foreign key references Kuzhina(ID_Kuzhina)
)

create table NrTel_Kuzhinieri(
Nr_Telefonit int primary key,
Operatori varchar(255),
ID_Kuzhinieri int foreign key references Kuzhinieri(ID_Kuzhinieri)
) 

create table Depo( 
ID_Depo int primary key,
Nr_Sasise varchar (255),
Koha_Furnizimit time,
ID_Shanki int foreign key references Shanki(ID_Shanki)
)

create table Depoisti( 
ID_Depoisti int primary key,   
Emri varchar(255) not null,
Mbiemri varchar(255) not null,
Adresa varchar(50) not null,
Menaxheri_ID int foreign key references Depoisti(ID_Depoisti)
)

create table NrTel_Depoisti(
Nr_Telefonit int primary key,
Operatori varchar(255),
ID_Depoisti int foreign key references Depoisti(ID_Depoisti)
)

create table Punon( 
ID_Depoisti int foreign key references Depoisti(ID_Depoisti),
ID_Depo INT FOREIGN KEY REFERENCES Depo(ID_Depo),
PRIMARY KEY (ID_Depoisti,ID_Depo)
)

Insert Kamarieri(ID_Kamarieri, Emri, Mbiemri, Adresa, Menaxheri_ID) values (001, 'Trim', 'Zymberi', 'Gjilan', 1 )
Insert Kamarieri(ID_Kamarieri, Emri, Mbiemri, Adresa, Menaxheri_ID) values (002, 'Arlind', 'Maliqi', 'Gjilan', 2)
Insert Kamarieri(ID_Kamarieri, Emri, Mbiemri, Adresa, Menaxheri_ID) values (003, 'Altrim', 'Huruglica', 'Gjilan', 3)
Insert Kamarieri(ID_Kamarieri, Emri, Mbiemri, Adresa, Menaxheri_ID) values (004, 'Klesti', 'Kola', 'Tirane', 4)
Insert Kamarieri(ID_Kamarieri, Emri, Mbiemri, Adresa, Menaxheri_ID) values (005, 'Sener', 'Mahmuti', 'Prishtine', 5)
Insert Kamarieri(ID_Kamarieri, Emri, Mbiemri, Adresa, Menaxheri_ID) values (006, 'Rigon', 'Gashi', 'Cyrih', 6)
Insert Kamarieri(ID_Kamarieri, Emri, Mbiemri, Adresa, Menaxheri_ID) values (007, 'Albin', 'Kurti', 'Prishtine', 7)
Insert Kamarieri(ID_Kamarieri, Emri, Mbiemri, Adresa, Menaxheri_ID) values (008, 'Genc', 'Kolgeci', 'Ferizaj', 8)
Insert Kamarieri(ID_Kamarieri, Emri, Mbiemri, Adresa, Menaxheri_ID) values (009, 'Juan', 'Flatroo', 'Prishtine', 9)
Insert Kamarieri(ID_Kamarieri, Emri, Mbiemri, Adresa, Menaxheri_ID) values (010, 'Dionis', 'Budeci', 'Peje', 10)


Insert NrTel_Kamarieri (Nr_Telefonit, Operatori, ID_Kamarieri) values (044155798, 'Vala', 001)
Insert NrTel_Kamarieri (Nr_Telefonit, Operatori, ID_Kamarieri) values (049155798, 'Ipko', 001)
Insert NrTel_Kamarieri (Nr_Telefonit, Operatori, ID_Kamarieri) values (044124325, 'Vala', 002)
Insert NrTel_Kamarieri (Nr_Telefonit, Operatori, ID_Kamarieri) values (044123232, 'Vala', 002)
Insert NrTel_Kamarieri (Nr_Telefonit, Operatori, ID_Kamarieri) values (049123232, 'Ipko', 002)
Insert NrTel_Kamarieri (Nr_Telefonit, Operatori, ID_Kamarieri) values (049152397, 'Ipko', 003)
Insert NrTel_Kamarieri (Nr_Telefonit, Operatori, ID_Kamarieri) values (044153200, 'Vala', 003)
Insert NrTel_Kamarieri (Nr_Telefonit, Operatori, ID_Kamarieri) values (044000001, 'Vala', 003)
Insert NrTel_Kamarieri (Nr_Telefonit, Operatori, ID_Kamarieri) values (049135746, 'Ipko', 004)
Insert NrTel_Kamarieri (Nr_Telefonit, Operatori, ID_Kamarieri) values (044153732, 'Vala', 004)
Insert NrTel_Kamarieri (Nr_Telefonit, Operatori, ID_Kamarieri) values (049152323, 'Ipko', 004)
Insert NrTel_Kamarieri (Nr_Telefonit, Operatori, ID_Kamarieri) values (044101928, 'Vala', 005)
Insert NrTel_Kamarieri (Nr_Telefonit, Operatori, ID_Kamarieri) values (044290017, 'Vala', 005)
Insert NrTel_Kamarieri (Nr_Telefonit, Operatori, ID_Kamarieri) values (049123102, 'Ipko', 006)
Insert NrTel_Kamarieri (Nr_Telefonit, Operatori, ID_Kamarieri) values (044121121, 'Vala', 006)
Insert NrTel_Kamarieri (Nr_Telefonit, Operatori, ID_Kamarieri) values (049555555, 'Ipko', 006)
Insert NrTel_Kamarieri (Nr_Telefonit, Operatori, ID_Kamarieri) values (044010101, 'Vala', 007)
Insert NrTel_Kamarieri (Nr_Telefonit, Operatori, ID_Kamarieri) values (044999999, 'Vala', 007)
Insert NrTel_Kamarieri (Nr_Telefonit, Operatori, ID_Kamarieri) values (049132323, 'Ipko', 007)
Insert NrTel_Kamarieri (Nr_Telefonit, Operatori, ID_Kamarieri) values (044777777, 'Vala', 008)
Insert NrTel_Kamarieri (Nr_Telefonit, Operatori, ID_Kamarieri) values (044333333, 'Vala', 008)
Insert NrTel_Kamarieri (Nr_Telefonit, Operatori, ID_Kamarieri) values (049999999, 'Ipko', 009)
Insert NrTel_Kamarieri (Nr_Telefonit, Operatori, ID_Kamarieri) values (044444444, 'Vala', 009)
Insert NrTel_Kamarieri (Nr_Telefonit, Operatori, ID_Kamarieri) values (044515151, 'Vala', 010)
Insert NrTel_Kamarieri (Nr_Telefonit, Operatori, ID_Kamarieri) values (049515151, 'Ipko', 010)



Insert Klienti (ID_Klienti, Emri, Mbiemri, ID_Kamarieri) values (0001, 'Elton', 'Boshnjaku', 001)
Insert Klienti (ID_Klienti, Emri, Mbiemri, ID_Kamarieri) values (0002, 'Medina', 'Shamolli', 001)
Insert Klienti (ID_Klienti, Emri, Mbiemri, ID_Kamarieri) values (0003, 'Ramiz', 'Hoxha', 002)
Insert Klienti (ID_Klienti, Emri, Mbiemri, ID_Kamarieri) values (0004, 'Blerina', 'Rrmoku', 002)
Insert Klienti (ID_Klienti, Emri, Mbiemri, ID_Kamarieri) values (0005, 'Blerim', 'Zylfiu', 002)
Insert Klienti (ID_Klienti, Emri, Mbiemri, ID_Kamarieri) values (0006, 'Lavdim', 'Menxhiqi', 003)
Insert Klienti (ID_Klienti, Emri, Mbiemri, ID_Kamarieri) values (0007, 'Shkelqim', 'Berisha', 003)
Insert Klienti (ID_Klienti, Emri, Mbiemri, ID_Kamarieri) values (0008, 'Zhilbert', 'Tafa', 006)
Insert Klienti (ID_Klienti, Emri, Mbiemri, ID_Kamarieri) values (0009, 'Behar', 'Haxhimusa', 006)
Insert Klienti (ID_Klienti, Emri, Mbiemri, ID_Kamarieri) values (0010, 'Florent', 'Sahiti', 008)


Insert NrTel_klienti (Nr_Telefonit, Operatori, ID_Klienti) values (044000000, 'Vala', 0001)
Insert NrTel_klienti (Nr_Telefonit, Operatori, ID_Klienti) values (049024002, 'Ipko', 0001)
Insert NrTel_klienti (Nr_Telefonit, Operatori, ID_Klienti) values (049020006, 'Ipko', 0003)
Insert NrTel_klienti (Nr_Telefonit, Operatori, ID_Klienti) values (044040007, 'Vala', 0003)
Insert NrTel_klienti (Nr_Telefonit, Operatori, ID_Klienti) values (044060008, 'Vala', 0003)
Insert NrTel_klienti (Nr_Telefonit, Operatori, ID_Klienti) values (049070009, 'Ipko', 0004)
Insert NrTel_klienti (Nr_Telefonit, Operatori, ID_Klienti) values (044150000, 'Vala', 0004)
Insert NrTel_klienti (Nr_Telefonit, Operatori, ID_Klienti) values (049180001, 'Ipko', 0004)
Insert NrTel_klienti (Nr_Telefonit, Operatori, ID_Klienti) values (044107002, 'Vala', 0005)
Insert NrTel_klienti (Nr_Telefonit, Operatori, ID_Klienti) values (044109003, 'Vala', 0005)
Insert NrTel_klienti (Nr_Telefonit, Operatori, ID_Klienti) values (049100804, 'Ipko', 0006)
Insert NrTel_klienti (Nr_Telefonit, Operatori, ID_Klienti) values (044100505, 'Vala', 0006)
Insert NrTel_klienti (Nr_Telefonit, Operatori, ID_Klienti) values (049100306, 'Ipko', 0006)
Insert NrTel_klienti (Nr_Telefonit, Operatori, ID_Klienti) values (044100407, 'Vala', 0007)
Insert NrTel_klienti (Nr_Telefonit, Operatori, ID_Klienti) values (044100408, 'Vala', 0007)
Insert NrTel_klienti (Nr_Telefonit, Operatori, ID_Klienti) values (049100209, 'Ipko', 0007)
Insert NrTel_klienti (Nr_Telefonit, Operatori, ID_Klienti) values (044200400, 'Vala', 0008)
Insert NrTel_klienti (Nr_Telefonit, Operatori, ID_Klienti) values (044200601, 'Vala', 0008)
Insert NrTel_klienti (Nr_Telefonit, Operatori, ID_Klienti) values (049200702, 'Ipko', 0009)
Insert NrTel_klienti (Nr_Telefonit, Operatori, ID_Klienti) values (044200703, 'Vala', 0009)
Insert NrTel_klienti (Nr_Telefonit, Operatori, ID_Klienti) values (044200704, 'Vala', 0010)
Insert NrTel_klienti (Nr_Telefonit, Operatori, ID_Klienti) values (049200705, 'Ipko', 0010)
Insert NrTel_klienti (Nr_Telefonit, Operatori, ID_Klienti) values (049737005, 'Ipko', 0010)
Insert NrTel_klienti (Nr_Telefonit, Operatori, ID_Klienti) values (049211715, 'Ipko', 0010)
Insert NrTel_klienti (Nr_Telefonit, Operatori, ID_Klienti) values (044277601, 'Vala', 0008)

Insert Recepsionisti (ID_Recepsionisti, Emri, Mbiemri, Adresa) values (001, 'Leotrim', 'Hasani', 'Gjilan')
Insert Recepsionisti (ID_Recepsionisti, Emri, Mbiemri, Adresa) values (002, 'Leotrim', 'Bunjaku', 'Prishtine')
Insert Recepsionisti (ID_Recepsionisti, Emri, Mbiemri, Adresa) values (003, 'Rion', 'Kajtazi', 'Prizeren')
Insert Recepsionisti (ID_Recepsionisti, Emri, Mbiemri, Adresa) values (004, 'Alp', 'Kuqi', 'Gjilan')
Insert Recepsionisti (ID_Recepsionisti, Emri, Mbiemri, Adresa) values (005, 'Vjosa', 'Osmani', 'Prishtine')
Insert Recepsionisti (ID_Recepsionisti, Emri, Mbiemri, Adresa) values (006, 'Liridon', 'Leci', 'Gjakove')
Insert Recepsionisti (ID_Recepsionisti, Emri, Mbiemri, Adresa) values (007, 'Ard', 'Limani', 'Gjilan')
Insert Recepsionisti (ID_Recepsionisti, Emri, Mbiemri, Adresa) values (008, 'Almir', 'Ajzeraj', 'Ferizaj')
Insert Recepsionisti (ID_Recepsionisti, Emri, Mbiemri, Adresa) values (009, 'Yll', 'Ibrahimi', 'Gjilan')
Insert Recepsionisti (ID_Recepsionisti, Emri, Mbiemri, Adresa) values (010, 'Valon', 'Murseli', 'Prishtine')

Insert NrTel_Recepsionisti(Nr_Telefonit, Operatori, ID_Recepsionisti) values (044155798, 'Vala', 001)
Insert NrTel_Recepsionisti (Nr_Telefonit, Operatori, ID_Recepsionisti) values (049155798, 'Ipko', 001)
Insert NrTel_Recepsionisti (Nr_Telefonit, Operatori, ID_Recepsionisti) values (044124325, 'Vala', 002)
Insert NrTel_Recepsionisti (Nr_Telefonit, Operatori, ID_Recepsionisti) values (044123232, 'Vala', 002)
Insert NrTel_Recepsionisti (Nr_Telefonit, Operatori, ID_Recepsionisti) values (049123232, 'Ipko', 002)
Insert NrTel_Recepsionisti (Nr_Telefonit, Operatori, ID_Recepsionisti) values (049152397, 'Ipko', 003)
Insert NrTel_Recepsionisti (Nr_Telefonit, Operatori, ID_Recepsionisti) values (044153200, 'Vala', 003)
Insert NrTel_Recepsionisti (Nr_Telefonit, Operatori, ID_Recepsionisti) values (044000001, 'Vala', 003)
Insert NrTel_Recepsionisti (Nr_Telefonit, Operatori, ID_Recepsionisti) values (049135746, 'Ipko', 004)
Insert NrTel_Recepsionisti (Nr_Telefonit, Operatori, ID_Recepsionisti) values (044153732, 'Vala', 004)
Insert NrTel_Recepsionisti (Nr_Telefonit, Operatori, ID_Recepsionisti) values (049152323, 'Ipko', 004)
Insert NrTel_Recepsionisti (Nr_Telefonit, Operatori, ID_Recepsionisti) values (044101928, 'Vala', 005)
Insert NrTel_Recepsionisti (Nr_Telefonit, Operatori, ID_Recepsionisti) values (044290017, 'Vala', 005)
Insert NrTel_Recepsionisti (Nr_Telefonit, Operatori, ID_Recepsionisti) values (049123102, 'Ipko', 006)
Insert NrTel_Recepsionisti (Nr_Telefonit, Operatori, ID_Recepsionisti) values (044121121, 'Vala', 006)
Insert NrTel_Recepsionisti (Nr_Telefonit, Operatori, ID_Recepsionisti) values (049555555, 'Ipko', 006)
Insert NrTel_Recepsionisti (Nr_Telefonit, Operatori, ID_Recepsionisti) values (044010101, 'Vala', 007)
Insert NrTel_Recepsionisti (Nr_Telefonit, Operatori, ID_Recepsionisti) values (044999999, 'Vala', 007)
Insert NrTel_Recepsionisti (Nr_Telefonit, Operatori, ID_Recepsionisti) values (049132323, 'Ipko', 007)
Insert NrTel_Recepsionisti (Nr_Telefonit, Operatori, ID_Recepsionisti) values (044777777, 'Vala', 008)
Insert NrTel_Recepsionisti (Nr_Telefonit, Operatori, ID_Recepsionisti) values (044333333, 'Vala', 008)
Insert NrTel_Recepsionisti (Nr_Telefonit, Operatori, ID_Recepsionisti) values (049999999, 'Ipko', 009)
Insert NrTel_Recepsionisti (Nr_Telefonit, Operatori, ID_Recepsionisti) values (044444444, 'Vala', 009)
Insert NrTel_Recepsionisti (Nr_Telefonit, Operatori, ID_Recepsionisti) values (044515151, 'Vala', 010)
Insert NrTel_Recepsionisti (Nr_Telefonit, Operatori, ID_Recepsionisti) values (049515151, 'Ipko', 010)


Insert Rezervon (ID_Klientii, Koha_rezervimit, Nr_Personave, ID_Klienti, ID_Recepsionisti) values (0001, '13:22', 5, 0000, 001)
Insert Rezervon (ID_Klientii, Koha_rezervimit, Nr_Personave, ID_Klienti, ID_Recepsionisti) values (0002, '11:42', 6, 0001, 001)
Insert Rezervon (ID_Klientii, Koha_rezervimit, Nr_Personave, ID_Klienti, ID_Recepsionisti) values (0004, '13:22', 5, 0003, 002)
Insert Rezervon (ID_Klientii, Koha_rezervimit, Nr_Personave, ID_Klienti, ID_Recepsionisti) values (0005, '13:22', 1, 0004, 002)
Insert Rezervon (ID_Klientii, Koha_rezervimit, Nr_Personave, ID_Klienti, ID_Recepsionisti) values (0006, '10:22', 7, 0005, 002)
Insert Rezervon (ID_Klientii, Koha_rezervimit, Nr_Personave, ID_Klienti, ID_Recepsionisti) values (0007, '18:22', 2, 0006, 006)
Insert Rezervon (ID_Klientii, Koha_rezervimit, Nr_Personave, ID_Klienti, ID_Recepsionisti) values (0008, '14:12', 4, 0007, 006)
Insert Rezervon (ID_Klientii, Koha_rezervimit, Nr_Personave, ID_Klienti, ID_Recepsionisti) values (0009, '15:52', 5, 0008, 001)
Insert Rezervon (ID_Klientii, Koha_rezervimit, Nr_Personave, ID_Klienti, ID_Recepsionisti) values (0010, '13:22', 5, 0009, 008)
Insert Rezervon (ID_Klientii, Koha_rezervimit, Nr_Personave, ID_Klienti, ID_Recepsionisti) values (0012, '13:22', 5, 0001, 007)
Insert Rezervon (ID_Klientii, Koha_rezervimit, Nr_Personave, ID_Klienti, ID_Recepsionisti) values (0014, '13:22', 3, 0005, 009)
Insert Rezervon (ID_Klientii, Koha_rezervimit, Nr_Personave, ID_Klienti, ID_Recepsionisti) values (0015, '12:02', 3, 0007, 001)
Insert Rezervon (ID_Klientii, Koha_rezervimit, Nr_Personave, ID_Klienti, ID_Recepsionisti) values (0016, '14:29', 8, 0006, 001)
Insert Rezervon (ID_Klientii, Koha_rezervimit, Nr_Personave, ID_Klienti, ID_Recepsionisti) values (0017, '17:22', 2, 0006, 009)
Insert Rezervon (ID_Klientii, Koha_rezervimit, Nr_Personave, ID_Klienti, ID_Recepsionisti) values (0018, '13:22', 5, 0010, 001)
Insert Rezervon (ID_Klientii, Koha_rezervimit, Nr_Personave, ID_Klienti, ID_Recepsionisti) values (0019, '14:12', 2, 0008, 002)
Insert Rezervon (ID_Klientii, Koha_rezervimit, Nr_Personave, ID_Klienti, ID_Recepsionisti) values (0020, '16:22', 1, 0009, 007)
Insert Rezervon (ID_Klientii, Koha_rezervimit, Nr_Personave, ID_Klienti, ID_Recepsionisti) values (0021, '09:22', 4, 0005, 002)
Insert Rezervon (ID_Klientii, Koha_rezervimit, Nr_Personave, ID_Klienti, ID_Recepsionisti) values (0022, '20:22', 5, 0010, 010)
Insert Rezervon (ID_Klientii, Koha_rezervimit, Nr_Personave, ID_Klienti, ID_Recepsionisti) values (0023, '22:22', 5, 0006, 009)
Insert Rezervon (ID_Klientii, Koha_rezervimit, Nr_Personave, ID_Klienti, ID_Recepsionisti) values (0024, '23:22', 2, 0004, 003)
Insert Rezervon (ID_Klientii, Koha_rezervimit, Nr_Personave, ID_Klienti, ID_Recepsionisti) values (0025, '07:22', 5, 0006, 007)
Insert Rezervon (ID_Klientii, Koha_rezervimit, Nr_Personave, ID_Klienti, ID_Recepsionisti) values (0026, '09:26', 5, 0006, 001)
Insert Rezervon (ID_Klientii, Koha_rezervimit, Nr_Personave, ID_Klienti, ID_Recepsionisti) values (0028, '14:32', 4, 0005, 008)
Insert Rezervon (ID_Klientii, Koha_rezervimit, Nr_Personave, ID_Klienti, ID_Recepsionisti) values (0029, '19:26', 3, 0008, 007)

Insert Shanki (ID_Shanki) values (1)
Insert Shanki (ID_Shanki) values (2)
Insert Shanki (ID_Shanki) values (3)
Insert Shanki (ID_Shanki) values (4)
Insert Shanki (ID_Shanki) values (5)
Insert Shanki (ID_Shanki) values (6)
Insert Shanki (ID_Shanki) values (7)
Insert Shanki (ID_Shanki) values (8)
Insert Shanki (ID_Shanki) values (9)
Insert Shanki (ID_Shanki) values (10)

Insert Porosia (Nr_Porosis, Koha_porosis, ID_Kamarieri, ID_Shanki) values (01, '10:00', 001, 1)
Insert Porosia (Nr_Porosis, Koha_porosis, ID_Kamarieri, ID_Shanki) values (02, '11:00', 001, 1)
Insert Porosia (Nr_Porosis, Koha_porosis, ID_Kamarieri, ID_Shanki) values (03, '12:00', 001, 1)
Insert Porosia (Nr_Porosis, Koha_porosis, ID_Kamarieri, ID_Shanki) values (04, '10:30', 001, 1)
Insert Porosia (Nr_Porosis, Koha_porosis, ID_Kamarieri, ID_Shanki) values (05, '18:40', 001, 1)
Insert Porosia (Nr_Porosis, Koha_porosis, ID_Kamarieri, ID_Shanki) values (06, '10:00', 002, 1)
Insert Porosia (Nr_Porosis, Koha_porosis, ID_Kamarieri, ID_Shanki) values (07, '11:20', 002, 1)
Insert Porosia (Nr_Porosis, Koha_porosis, ID_Kamarieri, ID_Shanki) values (08, '11:03', 002, 1)
Insert Porosia (Nr_Porosis, Koha_porosis, ID_Kamarieri, ID_Shanki) values (09, '10:50', 002, 1)
Insert Porosia (Nr_Porosis, Koha_porosis, ID_Kamarieri, ID_Shanki) values (10, '13:00', 002, 1)
Insert Porosia (Nr_Porosis, Koha_porosis, ID_Kamarieri, ID_Shanki) values (11, '10:30', 003, 1)
Insert Porosia (Nr_Porosis, Koha_porosis, ID_Kamarieri, ID_Shanki) values (12, '11:00', 003, 1)
Insert Porosia (Nr_Porosis, Koha_porosis, ID_Kamarieri, ID_Shanki) values (13, '10:45', 003, 1)
Insert Porosia (Nr_Porosis, Koha_porosis, ID_Kamarieri, ID_Shanki) values (14, '12:03', 003, 1)
Insert Porosia (Nr_Porosis, Koha_porosis, ID_Kamarieri, ID_Shanki) values (15, '20:00', 003, 1)
Insert Porosia (Nr_Porosis, Koha_porosis, ID_Kamarieri, ID_Shanki) values (16, '11:23', 004, 1)
Insert Porosia (Nr_Porosis, Koha_porosis, ID_Kamarieri, ID_Shanki) values (17, '13:00', 004, 1)
Insert Porosia (Nr_Porosis, Koha_porosis, ID_Kamarieri, ID_Shanki) values (18, '12:10', 004, 1)
Insert Porosia (Nr_Porosis, Koha_porosis, ID_Kamarieri, ID_Shanki) values (19, '19:20', 004, 1)
Insert Porosia (Nr_Porosis, Koha_porosis, ID_Kamarieri, ID_Shanki) values (20, '20:22', 004, 1)
Insert Porosia (Nr_Porosis, Koha_porosis, ID_Kamarieri, ID_Shanki) values (21, '21:22', 005, 1)
Insert Porosia (Nr_Porosis, Koha_porosis, ID_Kamarieri, ID_Shanki) values (22, '23:22', 005, 1)
Insert Porosia (Nr_Porosis, Koha_porosis, ID_Kamarieri, ID_Shanki) values (23, '20:42', 005, 1)
Insert Porosia (Nr_Porosis, Koha_porosis, ID_Kamarieri, ID_Shanki) values (24, '19:32', 005, 1)
Insert Porosia (Nr_Porosis, Koha_porosis, ID_Kamarieri, ID_Shanki) values (25, '22:22', 005, 1)

Insert Menaxheri (ID_Menaxheri, Emri, Mbiemri, Adresa) values (001, 'Lirim', 'Hasani', 'Gjilan')
Insert Menaxheri (ID_Menaxheri, Emri, Mbiemri, Adresa) values (002, 'Xhan', 'Bunjaku', 'Prishtine')
Insert Menaxheri (ID_Menaxheri, Emri, Mbiemri, Adresa) values (003, 'Roi', 'Kajtazi', 'Prizeren')
Insert Menaxheri (ID_Menaxheri, Emri, Mbiemri, Adresa) values (004, 'Altin', 'Kuqi', 'Gjilan')
Insert Menaxheri (ID_Menaxheri, Emri, Mbiemri, Adresa) values (005, 'Loris', 'Osmani', 'Prishtine')
Insert Menaxheri (ID_Menaxheri, Emri, Mbiemri, Adresa) values (006, 'Dion', 'Leci', 'Gjakove')
Insert Menaxheri (ID_Menaxheri, Emri, Mbiemri, Adresa) values (007, 'Perparim', 'Limani', 'Gjilan')
Insert Menaxheri (ID_Menaxheri, Emri, Mbiemri, Adresa) values (008, 'Albert', 'Ajzeraj', 'Ferizaj')
Insert Menaxheri (ID_Menaxheri, Emri, Mbiemri, Adresa) values (009, 'Genc', 'Ibrahimi', 'Gjilan')
Insert Menaxheri (ID_Menaxheri, Emri, Mbiemri, Adresa) values (010, 'Valdrin', 'Murseli', 'Prishtine')



Insert NrTel_Menaxheri (Nr_Telefonit, Operatori, ID_Menaxheri) values (044155798, 'Vala', 001)
Insert NrTel_Menaxheri (Nr_Telefonit, Operatori, ID_Menaxheri) values (049155798, 'Ipko', 001)
Insert NrTel_Menaxheri (Nr_Telefonit, Operatori, ID_Menaxheri) values (044124325, 'Vala', 002)
Insert NrTel_Menaxheri (Nr_Telefonit, Operatori, ID_Menaxheri) values (044123232, 'Vala', 002)
Insert NrTel_Menaxheri (Nr_Telefonit, Operatori, ID_Menaxheri) values (049123232, 'Ipko', 002)
Insert NrTel_Menaxheri (Nr_Telefonit, Operatori, ID_Menaxheri) values (049152397, 'Ipko', 003)
Insert NrTel_Menaxheri (Nr_Telefonit, Operatori, ID_Menaxheri) values (044153200, 'Vala', 003)
Insert NrTel_Menaxheri (Nr_Telefonit, Operatori, ID_Menaxheri) values (044000001, 'Vala', 003)
Insert NrTel_Menaxheri (Nr_Telefonit, Operatori, ID_Menaxheri) values (049135746, 'Ipko', 004)
Insert NrTel_Menaxheri (Nr_Telefonit, Operatori, ID_Menaxheri) values (044153732, 'Vala', 004)
Insert NrTel_Menaxheri (Nr_Telefonit, Operatori, ID_Menaxheri) values (049152323, 'Ipko', 004)
Insert NrTel_Menaxheri (Nr_Telefonit, Operatori, ID_Menaxheri) values (044101928, 'Vala', 005)
Insert NrTel_Menaxheri (Nr_Telefonit, Operatori, ID_Menaxheri) values (044290017, 'Vala', 005)
Insert NrTel_Menaxheri (Nr_Telefonit, Operatori, ID_Menaxheri) values (049123102, 'Ipko', 006)
Insert NrTel_Menaxheri (Nr_Telefonit, Operatori, ID_Menaxheri) values (044121121, 'Vala', 006)
Insert NrTel_Menaxheri (Nr_Telefonit, Operatori, ID_Menaxheri) values (049555555, 'Ipko', 006)
Insert NrTel_Menaxheri (Nr_Telefonit, Operatori, ID_Menaxheri) values (044010101, 'Vala', 007)
Insert NrTel_Menaxheri (Nr_Telefonit, Operatori, ID_Menaxheri) values (044999999, 'Vala', 007)
Insert NrTel_Menaxheri (Nr_Telefonit, Operatori, ID_Menaxheri) values (049132323, 'Ipko', 007)
Insert NrTel_Menaxheri (Nr_Telefonit, Operatori, ID_Menaxheri) values (044777777, 'Vala', 008)
Insert NrTel_Menaxheri (Nr_Telefonit, Operatori, ID_Menaxheri) values (044333333, 'Vala', 008)
Insert NrTel_Menaxheri (Nr_Telefonit, Operatori, ID_Menaxheri) values (049999999, 'Ipko', 009)
Insert NrTel_Menaxheri (Nr_Telefonit, Operatori, ID_Menaxheri) values (044444444, 'Vala', 009)
Insert NrTel_Menaxheri (Nr_Telefonit, Operatori, ID_Menaxheri) values (044515151, 'Vala', 010)
Insert NrTel_Menaxheri (Nr_Telefonit, Operatori, ID_Menaxheri) values (049515151, 'Ipko', 010)

Insert Pagesa(ID_Klientii, Nr_tavolines, kesh, POS, ID_Menaxheri, ID_Klienti) values (1, 1, 0, 1, 001, 0001)
Insert Pagesa(ID_Klientii, Nr_tavolines, kesh, POS, ID_Menaxheri, ID_Klienti) values (2, 133, 0, 1, 001, 0001)
Insert Pagesa(ID_Klientii, Nr_tavolines, kesh, POS, ID_Menaxheri, ID_Klienti) values (3, 12, 20, 0, 001, 0003)
Insert Pagesa(ID_Klientii, Nr_tavolines, kesh, POS, ID_Menaxheri, ID_Klienti) values (4, 13, 0, 12, 001, 0004)
Insert Pagesa(ID_Klientii, Nr_tavolines, kesh, POS, ID_Menaxheri, ID_Klienti) values (5, 14, 200, 0, 001, 0005)
Insert Pagesa(ID_Klientii, Nr_tavolines, kesh, POS, ID_Menaxheri, ID_Klienti) values (6, 15, 0, 16, 002, 0006)
Insert Pagesa(ID_Klientii, Nr_tavolines, kesh, POS, ID_Menaxheri, ID_Klienti) values (7, 16, 230, 0, 002, 0007)
Insert Pagesa(ID_Klientii, Nr_tavolines, kesh, POS, ID_Menaxheri, ID_Klienti) values (8, 17, 0, 100, 002, 0008)
Insert Pagesa(ID_Klientii, Nr_tavolines, kesh, POS, ID_Menaxheri, ID_Klienti) values (9, 18, 120, 0, 002, 0009)
Insert Pagesa(ID_Klientii, Nr_tavolines, kesh, POS, ID_Menaxheri, ID_Klienti) values (10, 19, 0, 112, 002, 0010)
Insert Pagesa(ID_Klientii, Nr_tavolines, kesh, POS, ID_Menaxheri, ID_Klienti) values (11, 29, 0, 112, 002, 0010)
Insert Pagesa(ID_Klientii, Nr_tavolines, kesh, POS, ID_Menaxheri, ID_Klienti) values (12, 0, 110, 112, 002, 0010)
Insert Pagesa(ID_Klientii, Nr_tavolines, kesh, POS, ID_Menaxheri, ID_Klienti) values (22, 133, 0, 1, 001, 0001)
Insert Pagesa(ID_Klientii, Nr_tavolines, kesh, POS, ID_Menaxheri, ID_Klienti) values (23, 233, 0, 1, 001, 0001)
Insert Pagesa(ID_Klientii, Nr_tavolines, kesh, POS, ID_Menaxheri, ID_Klienti) values (15, 333, 0, 1, 001, 0001)
Insert Pagesa(ID_Klientii, Nr_tavolines, kesh, POS, ID_Menaxheri, ID_Klienti) values (16, 0, 220, 1, 001, 0001)
Insert Pagesa(ID_Klientii, Nr_tavolines, kesh, POS, ID_Menaxheri, ID_Klienti) values (17, 0, 110, 112, 002, 0010)
Insert Pagesa(ID_Klientii, Nr_tavolines, kesh, POS, ID_Menaxheri, ID_Klienti) values (18, 20, 0 , 11, 002, 0010)
Insert Pagesa(ID_Klientii, Nr_tavolines, kesh, POS, ID_Menaxheri, ID_Klienti) values (19, 0, 110, 112, 002, 0010)
Insert Pagesa(ID_Klientii, Nr_tavolines, kesh, POS, ID_Menaxheri, ID_Klienti) values (20, 0, 110, 112, 002, 0010)
Insert Pagesa(ID_Klientii, Nr_tavolines, kesh, POS, ID_Menaxheri, ID_Klienti) values (21, 18, 120, 0, 002, 0009)
Insert Pagesa(ID_Klientii, Nr_tavolines, kesh, POS, ID_Menaxheri, ID_Klienti) values (26, 333, 0, 1, 001, 0001)
Insert Pagesa(ID_Klientii, Nr_tavolines, kesh, POS, ID_Menaxheri, ID_Klienti) values (27, 233, 0, 1, 001, 0001)
Insert Pagesa(ID_Klientii, Nr_tavolines, kesh, POS, ID_Menaxheri, ID_Klienti) values (28, 19, 0, 112, 002, 0010)
Insert Pagesa(ID_Klientii, Nr_tavolines, kesh, POS, ID_Menaxheri, ID_Klienti) values (29, 13, 0, 12, 001, 0004)

Insert Bari (ID_Bari, Orari_i_ndrrimit, Nr_Produkteve, ID_Shanki) values (1, '08:00', NULL, 1)
Insert Bari (ID_Bari, Orari_i_ndrrimit, Nr_Produkteve, ID_Shanki) values (2, '08:00', NULL, 1)
Insert Bari (ID_Bari, Orari_i_ndrrimit, Nr_Produkteve, ID_Shanki) values (3, '08:00', NULL, 1)
Insert Bari (ID_Bari, Orari_i_ndrrimit, Nr_Produkteve, ID_Shanki) values (4, '08:00', NULL, 1)
Insert Bari (ID_Bari, Orari_i_ndrrimit, Nr_Produkteve, ID_Shanki) values (5, '08:00', NULL, 1)
Insert Bari (ID_Bari, Orari_i_ndrrimit, Nr_Produkteve, ID_Shanki) values (6, '16:00', NULL, 1)
Insert Bari (ID_Bari, Orari_i_ndrrimit, Nr_Produkteve, ID_Shanki) values (7, '16:00', NULL, 1)
Insert Bari (ID_Bari, Orari_i_ndrrimit, Nr_Produkteve, ID_Shanki) values (8, '16:00', NULL, 1)
Insert Bari (ID_Bari, Orari_i_ndrrimit, Nr_Produkteve, ID_Shanki) values (9, '16:00', NULL, 1)
Insert Bari (ID_Bari, Orari_i_ndrrimit, Nr_Produkteve, ID_Shanki) values (10, '16:00', NULL, 1)

Insert Kontrollon (ID_Menaxheri, Nr_Porosis, ID_Kamarieri, ID_Shanki) values (001, 1, 001, 1)
Insert Kontrollon (ID_Menaxheri, Nr_Porosis, ID_Kamarieri, ID_Shanki) values (002, 2, 002, 1)
Insert Kontrollon (ID_Menaxheri, Nr_Porosis, ID_Kamarieri, ID_Shanki) values (003, 3, 003, 1)
Insert Kontrollon (ID_Menaxheri, Nr_Porosis, ID_Kamarieri, ID_Shanki) values (004, 4, 004, 1)
Insert Kontrollon (ID_Menaxheri, Nr_Porosis, ID_Kamarieri, ID_Shanki) values (005, 5, 005, 1)
Insert Kontrollon (ID_Menaxheri, Nr_Porosis, ID_Kamarieri, ID_Shanki) values (006, 6, 006, 1)
Insert Kontrollon (ID_Menaxheri, Nr_Porosis, ID_Kamarieri, ID_Shanki) values (007, 7, 007, 1)
Insert Kontrollon (ID_Menaxheri, Nr_Porosis, ID_Kamarieri, ID_Shanki) values (008, 8, 008, 1)
Insert Kontrollon (ID_Menaxheri, Nr_Porosis, ID_Kamarieri, ID_Shanki) values (009, 9, 009, 1)
Insert Kontrollon (ID_Menaxheri, Nr_Porosis, ID_Kamarieri, ID_Shanki) values (010, 1, 010, 1)

Insert Bartenderi (ID_Bartenderi, Emri, Mbiemri, Adresa, ID_Bari) values (001, 'Lirim', 'Kqiku', 'Gjilan', 1)
Insert Bartenderi (ID_Bartenderi, Emri, Mbiemri, Adresa, ID_Bari) values (002, 'Arsim', 'Kiqina', 'Gjilan', 2)
Insert Bartenderi (ID_Bartenderi, Emri, Mbiemri, Adresa, ID_Bari) values (003, 'Lorin', 'Maxhuni', 'Prishtine', 3)
Insert Bartenderi (ID_Bartenderi, Emri, Mbiemri, Adresa, ID_Bari) values (004, 'Oda', 'Hoxha', 'Peje', 4)
Insert Bartenderi (ID_Bartenderi, Emri, Mbiemri, Adresa, ID_Bari) values (005, 'Dafina', 'Gashi', 'Prizeren', 5)
Insert Bartenderi (ID_Bartenderi, Emri, Mbiemri, Adresa, ID_Bari) values (006, 'Hera', 'Abdullahu', 'Gjakove', 6)
Insert Bartenderi (ID_Bartenderi, Emri, Mbiemri, Adresa, ID_Bari) values (007, 'Blenda', 'Huruglica', 'Ferizaj', 7)
Insert Bartenderi (ID_Bartenderi, Emri, Mbiemri, Adresa, ID_Bari) values (008, 'Leonora', 'Shahiqi', 'Gjilan', 8)
Insert Bartenderi (ID_Bartenderi, Emri, Mbiemri, Adresa, ID_Bari) values (009, 'Art', 'Mustafa', 'Gjilan', 9)
Insert Bartenderi (ID_Bartenderi, Emri, Mbiemri, Adresa, ID_Bari) values (010, 'Fatmir', 'Koshtova', 'Mitrovice', 10)


Insert NrTel_Bartenderi(Nr_Telefonit, Operatori, ID_Bartenderi) values (044000000, 'Vala', 001)
Insert NrTel_Bartenderi (Nr_Telefonit, Operatori, ID_Bartenderi) values (049024002, 'Ipko', 001)
Insert NrTel_Bartenderi (Nr_Telefonit, Operatori, ID_Bartenderi) values (049020006, 'Ipko', 003)
Insert NrTel_Bartenderi (Nr_Telefonit, Operatori, ID_Bartenderi) values (044040007, 'Vala', 003)
Insert NrTel_Bartenderi (Nr_Telefonit, Operatori, ID_Bartenderi) values (044060008, 'Vala', 003)
Insert NrTel_Bartenderi (Nr_Telefonit, Operatori, ID_Bartenderi) values (049070009, 'Ipko', 004)
Insert NrTel_Bartenderi (Nr_Telefonit, Operatori, ID_Bartenderi) values (044150000, 'Vala', 004)
Insert NrTel_Bartenderi (Nr_Telefonit, Operatori, ID_Bartenderi) values (049180001, 'Ipko', 004)
Insert NrTel_Bartenderi (Nr_Telefonit, Operatori, ID_Bartenderi) values (044107002, 'Vala', 005)
Insert NrTel_Bartenderi (Nr_Telefonit, Operatori, ID_Bartenderi) values (044109003, 'Vala', 005)
Insert NrTel_Bartenderi (Nr_Telefonit, Operatori, ID_Bartenderi) values (049100804, 'Ipko', 006)
Insert NrTel_Bartenderi (Nr_Telefonit, Operatori, ID_Bartenderi) values (044100505, 'Vala', 006)
Insert NrTel_Bartenderi (Nr_Telefonit, Operatori, ID_Bartenderi) values (049100306, 'Ipko', 006)
Insert NrTel_Bartenderi (Nr_Telefonit, Operatori, ID_Bartenderi) values (044100407, 'Vala', 007)
Insert NrTel_Bartenderi (Nr_Telefonit, Operatori, ID_Bartenderi) values (044100408, 'Vala', 007)
Insert NrTel_Bartenderi (Nr_Telefonit, Operatori, ID_Bartenderi) values (049100209, 'Ipko', 007)
Insert NrTel_Bartenderi (Nr_Telefonit, Operatori, ID_Bartenderi) values (044200400, 'Vala', 008)
Insert NrTel_Bartenderi (Nr_Telefonit, Operatori, ID_Bartenderi) values (044200601, 'Vala', 008)
Insert NrTel_Bartenderi (Nr_Telefonit, Operatori, ID_Bartenderi) values (049200702, 'Ipko', 009)
Insert NrTel_Bartenderi (Nr_Telefonit, Operatori, ID_Bartenderi) values (044200703, 'Vala', 009)
Insert NrTel_Bartenderi (Nr_Telefonit, Operatori, ID_Bartenderi) values (044200704, 'Vala', 010)
Insert NrTel_Bartenderi (Nr_Telefonit, Operatori, ID_Bartenderi) values (049200705, 'Ipko', 010)
Insert NrTel_Bartenderi (Nr_Telefonit, Operatori, ID_Bartenderi) values (049737005, 'Ipko', 010)
Insert NrTel_Bartenderi (Nr_Telefonit, Operatori, ID_Bartenderi) values (049211715, 'Ipko', 010)
Insert NrTel_Bartenderi (Nr_Telefonit, Operatori, ID_Bartenderi) values (044277601, 'Vala', 008)

Insert Kuzhina(ID_Kuzhina, Orari_i_ndrrimit, Nr_Produkteve, ID_Shanki) values (1, '08:00', NULL, 1)
Insert Kuzhina (ID_Kuzhina, Orari_i_ndrrimit, Nr_Produkteve, ID_Shanki) values (2, '08:00', NULL, 1)
Insert Kuzhina (ID_Kuzhina, Orari_i_ndrrimit, Nr_Produkteve, ID_Shanki) values (3, '08:00', NULL, 1)
Insert Kuzhina (ID_Kuzhina, Orari_i_ndrrimit, Nr_Produkteve, ID_Shanki) values (4, '08:00', NULL, 1)
Insert Kuzhina (ID_Kuzhina, Orari_i_ndrrimit, Nr_Produkteve, ID_Shanki) values (5, '08:00', NULL, 1)
Insert Kuzhina (ID_Kuzhina, Orari_i_ndrrimit, Nr_Produkteve, ID_Shanki) values (6, '16:00', NULL, 1)
Insert Kuzhina (ID_Kuzhina, Orari_i_ndrrimit, Nr_Produkteve, ID_Shanki) values (7, '16:00', NULL, 1)
Insert Kuzhina (ID_Kuzhina, Orari_i_ndrrimit, Nr_Produkteve, ID_Shanki) values (8, '16:00', NULL, 1)
Insert Kuzhina (ID_Kuzhina, Orari_i_ndrrimit, Nr_Produkteve, ID_Shanki) values (9, '16:00', NULL, 1)
Insert Kuzhina (ID_Kuzhina, Orari_i_ndrrimit, Nr_Produkteve, ID_Shanki) values (10, '16:00', NULL, 1)


Insert Kuzhinieri (ID_Kuzhinieri, Emri, Mbiemri, Adresa, ID_Kuzhina) values (001, 'Milot', 'Kqiku', 'Gjilan', 1)
Insert Kuzhinieri (ID_Kuzhinieri, Emri, Mbiemri, Adresa, ID_Kuzhina) values (002, 'Behar', 'Kiqina', 'Gjilan', 2)
Insert Kuzhinieri (ID_Kuzhinieri, Emri, Mbiemri, Adresa, ID_Kuzhina) values (003, 'Uran', 'Maxhuni', 'Prishtine', 3)
Insert Kuzhinieri (ID_Kuzhinieri, Emri, Mbiemri, Adresa, ID_Kuzhina) values (004, 'Diellza', 'Hoxha', 'Peje', 4)
Insert Kuzhinieri (ID_Kuzhinieri, Emri, Mbiemri, Adresa, ID_Kuzhina) values (005, 'Dea', 'Gashi', 'Prizeren', 5)
Insert Kuzhinieri (ID_Kuzhinieri, Emri, Mbiemri, Adresa, ID_Kuzhina) values (006, 'Roza', 'Abdullahu', 'Gjakove', 6)
Insert Kuzhinieri (ID_Kuzhinieri, Emri, Mbiemri, Adresa, ID_Kuzhina) values (007, 'Florentina', 'Huruglica', 'Ferizaj', 7)
Insert Kuzhinieri (ID_Kuzhinieri, Emri, Mbiemri, Adresa, ID_Kuzhina) values (008, 'Armir', 'Shahiqi', 'Gjilan', 8)
Insert Kuzhinieri (ID_Kuzhinieri, Emri, Mbiemri, Adresa, ID_Kuzhina) values (009, 'Arlind', 'Mustafa', 'Gjilan', 9)
Insert Kuzhinieri (ID_Kuzhinieri, Emri, Mbiemri, Adresa, ID_Kuzhina) values (010, 'Amir', 'Koshtova', 'Mitrovice', 10)


Insert NrTel_Kuzhinieri(Nr_Telefonit, Operatori, ID_Kuzhinieri) values (044000000, 'Vala', 001)
Insert NrTel_Kuzhinieri (Nr_Telefonit, Operatori, ID_Kuzhinieri) values (049024002, 'Ipko', 001)
Insert NrTel_Kuzhinieri (Nr_Telefonit, Operatori, ID_Kuzhinieri) values (049020006, 'Ipko', 003)
Insert NrTel_Kuzhinieri (Nr_Telefonit, Operatori, ID_Kuzhinieri) values (044040007, 'Vala', 003)
Insert NrTel_Kuzhinieri (Nr_Telefonit, Operatori, ID_Kuzhinieri) values (044060008, 'Vala', 003)
Insert NrTel_Kuzhinieri (Nr_Telefonit, Operatori, ID_Kuzhinieri) values (049070009, 'Ipko', 004)
Insert NrTel_Kuzhinieri (Nr_Telefonit, Operatori, ID_Kuzhinieri) values (044150000, 'Vala', 004)
Insert NrTel_Kuzhinieri (Nr_Telefonit, Operatori, ID_Kuzhinieri) values (049180001, 'Ipko', 004)
Insert NrTel_Kuzhinieri (Nr_Telefonit, Operatori, ID_Kuzhinieri) values (044107002, 'Vala', 005)
Insert NrTel_Kuzhinieri (Nr_Telefonit, Operatori, ID_Kuzhinieri) values (044109003, 'Vala', 005)
Insert NrTel_Kuzhinieri (Nr_Telefonit, Operatori, ID_Kuzhinieri) values (049100804, 'Ipko', 006)
Insert NrTel_Kuzhinieri (Nr_Telefonit, Operatori, ID_Kuzhinieri) values (044100505, 'Vala', 006)
Insert NrTel_Kuzhinieri (Nr_Telefonit, Operatori, ID_Kuzhinieri) values (049100306, 'Ipko', 006)
Insert NrTel_Kuzhinieri (Nr_Telefonit, Operatori, ID_Kuzhinieri) values (044100407, 'Vala', 007)
Insert NrTel_Kuzhinieri (Nr_Telefonit, Operatori, ID_Kuzhinieri) values (044100408, 'Vala', 007)
Insert NrTel_Kuzhinieri (Nr_Telefonit, Operatori, ID_Kuzhinieri) values (049100209, 'Ipko', 007)
Insert NrTel_Kuzhinieri (Nr_Telefonit, Operatori, ID_Kuzhinieri) values (044200400, 'Vala', 008)
Insert NrTel_Kuzhinieri (Nr_Telefonit, Operatori, ID_Kuzhinieri) values (044200601, 'Vala', 008)
Insert NrTel_Kuzhinieri (Nr_Telefonit, Operatori, ID_Kuzhinieri) values (049200702, 'Ipko', 009)
Insert NrTel_Kuzhinieri (Nr_Telefonit, Operatori, ID_Kuzhinieri) values (044200703, 'Vala', 009)
Insert NrTel_Kuzhinieri (Nr_Telefonit, Operatori, ID_Kuzhinieri) values (044200704, 'Vala', 010)
Insert NrTel_Kuzhinieri (Nr_Telefonit, Operatori, ID_Kuzhinieri) values (049200705, 'Ipko', 010)
Insert NrTel_Kuzhinieri (Nr_Telefonit, Operatori, ID_Kuzhinieri) values (049737005, 'Ipko', 010)
Insert NrTel_Kuzhinieri (Nr_Telefonit, Operatori, ID_Kuzhinieri) values (049211715, 'Ipko', 010)
Insert NrTel_Kuzhinieri (Nr_Telefonit, Operatori, ID_Kuzhinieri) values (044277601, 'Vala', 008)


Insert Depo (ID_Depo, Koha_Furnizimit, Nr_Sasise, ID_Shanki) values (1, '08:00', NULL, 1)
Insert Depo (ID_Depo, Koha_Furnizimit, Nr_Sasise, ID_Shanki) values (2, '08:00', NULL, 1)
Insert Depo (ID_Depo, Koha_Furnizimit, Nr_Sasise, ID_Shanki) values (3, '08:00', NULL, 1)
Insert Depo (ID_Depo, Koha_Furnizimit, Nr_Sasise, ID_Shanki) values (4, '08:00', NULL, 1)
Insert Depo (ID_Depo, Koha_Furnizimit, Nr_Sasise, ID_Shanki) values (5, '08:00', NULL, 1)
Insert Depo (ID_Depo, Koha_Furnizimit, Nr_Sasise, ID_Shanki) values (6, '16:00', NULL, 1)
Insert Depo (ID_Depo, Koha_Furnizimit, Nr_Sasise, ID_Shanki) values (7, '16:00', NULL, 1)
Insert Depo (ID_Depo, Koha_Furnizimit, Nr_Sasise, ID_Shanki) values (8, '16:00', NULL, 1)
Insert Depo (ID_Depo, Koha_Furnizimit, Nr_Sasise, ID_Shanki) values (9, '16:00', NULL, 1)
Insert Depo (ID_Depo, Koha_Furnizimit, Nr_Sasise, ID_Shanki) values (10, '16:00', NULL, 1)



Insert Depoisti(ID_Depoisti, Emri, Mbiemri, Adresa, Menaxheri_ID) values (001, 'Eris', 'Zymberi', 'Gjilan', 1 )
Insert Depoisti(ID_Depoisti, Emri, Mbiemri, Adresa, Menaxheri_ID) values (002, 'Amir', 'Maliqi', 'Gjilan', 2)
Insert Depoisti(ID_Depoisti, Emri, Mbiemri, Adresa, Menaxheri_ID) values (003, 'Altin', 'Huruglica', 'Gjilan', 3)
Insert Depoisti(ID_Depoisti, Emri, Mbiemri, Adresa, Menaxheri_ID) values (004, 'Edi', 'Kola', 'Tirane', 4)
Insert Depoisti(ID_Depoisti, Emri, Mbiemri, Adresa, Menaxheri_ID) values (005, 'Rron', 'Mahmuti', 'Prishtine', 5)
Insert Depoisti(ID_Depoisti, Emri, Mbiemri, Adresa, Menaxheri_ID) values (006, 'Xhon', 'Gashi', 'Cyrih', 6)
Insert Depoisti(ID_Depoisti, Emri, Mbiemri, Adresa, Menaxheri_ID) values (007, 'Shpetim', 'Kurti', 'Prishtine', 7)
Insert Depoisti(ID_Depoisti, Emri, Mbiemri, Adresa, Menaxheri_ID) values (008, 'Gzim', 'Kolgeci', 'Ferizaj', 8)
Insert Depoisti(ID_Depoisti, Emri, Mbiemri, Adresa, Menaxheri_ID) values (009, 'Drin', 'Flatroo', 'Prishtine', 9)
Insert Depoisti(ID_Depoisti, Emri, Mbiemri, Adresa, Menaxheri_ID) values (010, 'Diart', 'Budeci', 'Peje', 10)


Insert NrTel_Depoisti(Nr_Telefonit, Operatori, ID_Depoisti) values (044155798, 'Vala', 001)
Insert NrTel_Depoisti (Nr_Telefonit, Operatori, ID_Depoisti) values (049155798, 'Ipko', 001)
Insert NrTel_Depoisti (Nr_Telefonit, Operatori, ID_Depoisti) values (044124325, 'Vala', 002)
Insert NrTel_Depoisti (Nr_Telefonit, Operatori, ID_Depoisti) values (044123232, 'Vala', 002)
Insert NrTel_Depoisti (Nr_Telefonit, Operatori, ID_Depoisti) values (049123232, 'Ipko', 002)
Insert NrTel_Depoisti (Nr_Telefonit, Operatori, ID_Depoisti) values (049152397, 'Ipko', 003)
Insert NrTel_Depoisti (Nr_Telefonit, Operatori, ID_Depoisti) values (044153200, 'Vala', 003)
Insert NrTel_Depoisti (Nr_Telefonit, Operatori, ID_Depoisti) values (044000001, 'Vala', 003)
Insert NrTel_Depoisti (Nr_Telefonit, Operatori, ID_Depoisti) values (049135746, 'Ipko', 004)
Insert NrTel_Depoisti (Nr_Telefonit, Operatori, ID_Depoisti) values (044153732, 'Vala', 004)
Insert NrTel_Depoisti (Nr_Telefonit, Operatori, ID_Depoisti) values (049152323, 'Ipko', 004)
Insert NrTel_Depoisti (Nr_Telefonit, Operatori, ID_Depoisti) values (044101928, 'Vala', 005)
Insert NrTel_Depoisti (Nr_Telefonit, Operatori, ID_Depoisti) values (044290017, 'Vala', 005)
Insert NrTel_Depoisti (Nr_Telefonit, Operatori, ID_Depoisti) values (049123102, 'Ipko', 006)
Insert NrTel_Depoisti (Nr_Telefonit, Operatori, ID_Depoisti) values (044121121, 'Vala', 006)
Insert NrTel_Depoisti (Nr_Telefonit, Operatori, ID_Depoisti) values (049555555, 'Ipko', 006)
Insert NrTel_Depoisti (Nr_Telefonit, Operatori, ID_Depoisti) values (044010101, 'Vala', 007)
Insert NrTel_Depoisti (Nr_Telefonit, Operatori, ID_Depoisti) values (044999999, 'Vala', 007)
Insert NrTel_Depoisti (Nr_Telefonit, Operatori, ID_Depoisti) values (049132323, 'Ipko', 007)
Insert NrTel_Depoisti (Nr_Telefonit, Operatori, ID_Depoisti) values (044777777, 'Vala', 008)
Insert NrTel_Depoisti (Nr_Telefonit, Operatori, ID_Depoisti) values (044333333, 'Vala', 008)
Insert NrTel_Depoisti (Nr_Telefonit, Operatori, ID_Depoisti) values (049999999, 'Ipko', 009)
Insert NrTel_Depoisti (Nr_Telefonit, Operatori, ID_Depoisti) values (044444444, 'Vala', 009)
Insert NrTel_Depoisti (Nr_Telefonit, Operatori, ID_Depoisti) values (044515151, 'Vala', 010)
Insert NrTel_Depoisti (Nr_Telefonit, Operatori, ID_Depoisti) values (049515151, 'Ipko', 010)

Insert Punon (ID_Depoisti, ID_Depo) values (001, 1)
Insert Punon (ID_Depoisti, ID_Depo) values (002, 1)
Insert Punon (ID_Depoisti, ID_Depo) values (003, 1)
Insert Punon (ID_Depoisti, ID_Depo) values (004, 1)
Insert Punon (ID_Depoisti, ID_Depo) values (005, 1)
Insert Punon (ID_Depoisti, ID_Depo) values (006, 1)
Insert Punon (ID_Depoisti, ID_Depo) values (007, 1)
Insert Punon (ID_Depoisti, ID_Depo) values (008, 1)
Insert Punon (ID_Depoisti, ID_Depo) values (009, 1)
Insert Punon (ID_Depoisti, ID_Depo) values (010, 1)

Update Menaxheri
Set Emri = 'Arlind'
Where ID_Menaxheri = 002;

Update NrTel_Kamarieri
Set Operatori = 'Zmobile'
Where Nr_Telefonit = 044000001;

update Klienti
set Emri = 'Erjon'
where ID_Klienti = 0009;


Update NrTel_klienti
Set Operatori = 'Zmobile'
Where Nr_Telefonit = 044000000;

Update Rezervon
set Nr_Personave = 2
where ID_Klientii = 0002;

update Pagesa
set Nr_tavolines = 12
where ID_Klienti = 1;

update Menaxheri
set emri = 'Trim'
where ID_Menaxheri = 001;

update NrTel_Menaxheri
set Operatori = 'AT&T'
where Nr_Telefonit = 044000001;

update Porosia
set Koha_porosis = '13:12'
where Nr_Porosis = 1;

update Depoisti
set Emri = 'Hasan'
where ID_Depoisti = 2;

update Depo
set Nr_Sasise = 1233
where ID_Depo =1;

update NrTel_Recepsionisti
set Operatori = 'AT&T'
where ID_Recepsionisti = 004;

update Bari
set Nr_Produkteve = 100
where ID_Bari = 1;

update Kuzhina 
set Nr_Produkteve = 123
where ID_Kuzhina = 1;

update Kuzhinieri
set Emri = 'Valon'
where ID_Kuzhinieri = 1;

update Menaxheri
set Mbiemri = 'Maliqi'
where ID_Menaxheri = 002 ;

update Menaxheri
set Mbiemri = 'Zymberi'
where ID_Menaxheri = 001;

update Depoisti 
set Adresa = 'Gjakove'
where ID_Depoisti = 10;

update Kamarieri
set Mbiemri = 'Jashari'
where Emri = 'Adem';

update Porosia
set Koha_porosis = '00:00'
where Nr_Porosis = 14;

delete from Depoisti
WHERE Adresa = 'Prishtine' AND Menaxheri_ID > 5;

delete from kamarieri
where ID_Kamarieri = 004;

delete from NrTel_Depoisti
where ID_Depoisti = 001;

delete from Klineti
where Mbiemri = 'Hoxha';

delete from NrTel_Kuzhinieri
where ID_Kuzhinieri = 007;

delete from NrTel_Bartenderi 
where ID_Bartenderi = 002;

delete from NrTel_Depoisti
where ID_Depoisti = 001;

delete from Pagesa
where Nr_tavolines = 23;

delete from Rezervon
where Nr_Personave = 1;

delete from NrTel_Kamarieri
where Nr_Telefonit = 044000001;


/* Të realizoni min. 8 query të thjeshta (4 për student), të realizohen vetëm me një relacion(tabelë)*/
select *
from Kamarieri
where Emri = 'Trim';

select Emri , Mbiemri
from Klienti
where Emri like 'Elton';

select *
from Porosia
where  Koha_porosis between '13:00' and '16:00' ;

select ID_Depo, Nr_Sasise
from Depo
where Nr_Sasise IS NULL;

select Mbiemri, Adresa, ID_Kamarieri
from Kamarieri
where Emri = 'Arlind';

select *
from Rezervon
where ID_Recepsionisti = 2;

select * 
from Pagesa
where kesh between 0 and 100;

select Emri, Mbiemri
from Kuzhinieri
order by 1 

/* Të realizoni min. 8 query të thjeshta (4 për student), të realizohen në minimum dy relacione(tabela) e më tepër. */

select *
from Kamarieri k , Porosia p
where k.Emri = 'Trim' and k.Mbiemri = 'Zymberi' and p.ID_Kamarieri = 1;

select distinct r.ID_Recepsionisti, rz.Nr_Personave, rz.Koha_rezervimit
from Recepsionisti r, Rezervon rz
where rz.Koha_rezervimit between '07:00' and '13:00' and r.ID_Recepsionisti = 1; 

select k.ID_Kamarieri, k.Emri, k.Mbiemri, kl.ID_Klienti, kl.Emri 
from Kamarieri k , Klienti kl
where k.ID_Kamarieri = 1 and k.ID_Kamarieri = kl.ID_Klienti;

select distinct m.ID_Menaxheri, p.kesh, p.POS
from Menaxheri m, pagesa p
where p.kesh between 100 and 200 and m.Emri like 'Trim';

select nrK.ID_Kamarieri, k.Emri, k.Mbiemri, nrK.Nr_Telefonit, nrK.Operatori
from Kamarieri k, NrTel_Kamarieri nrK
where k.Emri = 'Arlind' and nrK.ID_Kamarieri = 2;

select * 
from Kamarieri k, Porosia p
where Emri = 'Arlind' and k.ID_Kamarieri = p.ID_Kamarieri;

select k.ID_Kamarieri ,k.Emri, k.Adresa, kl.ID_Klienti , kl.Emri, kl.Mbiemri
from Kamarieri k, Klienti kl
where kl.ID_Kamarieri = 2 and k.Emri = 'Arlind';

select *
from Klienti k, Rezervon r
where k.ID_Klienti = r.ID_Klienti
/* Të realizoni min. 8 query të avancuara (4 për student), të realizohen në minimum dy relacione(tabela) e më tepër. */

SELECT Klienti.Emri, Klienti.Mbiemri, Rezervon.Koha_rezervimit, Rezervon.Nr_Personave 
FROM Klienti
INNER JOIN Rezervon ON Klienti.ID_Klienti = Rezervon.ID_Klienti;

select *
from Kamarieri k FULL JOIN Porosia p
on k.ID_Kamarieri = p.ID_Kamarieri
where k.Emri = 'Trim';

SELECT Klienti.Emri, Klienti.Mbiemri, SUM(Pagesa.kesh + Pagesa.POS) AS Pagesa_Totale
FROM Klienti
INNER JOIN Pagesa ON Klienti.ID_Klienti = Pagesa.ID_Klienti
GROUP BY Klienti.Emri, Klienti.Mbiemri;

select *
from Menaxheri m right join Pagesa p
on m.ID_Menaxheri = p.ID_Menaxheri
where m.ID_Menaxheri = 001 and m.Emri = 'Trim';


SELECT Menaxheri.ID_Menaxheri, Kamarieri.Emri, Kamarieri.Mbiemri
FROM Menaxheri
INNER JOIN Kamarieri ON Menaxheri.ID_Menaxheri = Kamarieri.Menaxheri_ID;

select p.ID_Kamarieri , p.Koha_porosis, p.Nr_Porosis
from Kamarieri k right join Porosia p
on k.ID_Kamarieri = p.ID_Kamarieri
where k.Emri = 'Arlind' and p.ID_Kamarieri = 2;

select *
from Kamarieri k left join NrTel_Kamarieri nrK
on k.ID_Kamarieri = nrK.ID_Kamarieri
where k.Emri = 'Arlind';

select *
from Menaxheri m right join Pagesa p
on m.ID_Menaxheri = p.ID_Menaxheri
where m.ID_Menaxheri = 002 and m.Emri = 'Arlind';

/* Të realizoni min. 8 subquery të thjeshta (4 për student). */

SELECT Emri , Mbiemri
FROM Klienti
WHERE ID_Klienti IN (
	SELECT ID_Klienti
	FROM Pagesa
	WHERE kesh > 150)


SELECT ID_Recepsionisti, Emri, Mbiemri
FROM Recepsionisti
WHERE ID_Recepsionisti IN (
	SELECT Nr_Personave
	FROM Rezervon
	WHERE Nr_Personave < 5)

SELECT *
FROM Depoisti d
where d.Emri NOT IN (
	SELECT k.Emri
	FROM Kuzhinieri K)

SELECT * 
FROM Klienti k
where ID_Klienti  NOT IN (
	SELECT k.ID_Klienti
	FROM Rezervon r
	WHERE k.ID_Klienti = r.ID_Klienti );


SELECT * 
FROM kuzhina k
WHERE k.ID_Kuzhina IN (
	SELECT k.ID_Kuzhina
	FROM Kuzhinieri kz
	WHERE kz.ID_Kuzhina = k.ID_Kuzhina);

SELECT k.Mbiemri , k.Emri
FROM Klienti k
WHERE k.ID_Klienti NOT IN (
	SELECT k.ID_Klienti
	FROM Pagesa p
	WHERE K.ID_Klienti = p.ID_Klienti);

SELECT *
FROM Kamarieri k
WHERE k.Emri IN (
	SELECT M.Emri
	FROM Menaxheri m)

SELECT *
FROM Menaxheri m
where m.ID_Menaxheri not in (
	SELECT m.ID_Menaxheri
	FROM Pagesa p
	WHERE m.ID_Menaxheri = p.ID_Menaxheri);

/* Të realizoni min. 8 subquery të avancuara (4 për student). (min. 1 subquery në klauzolën SELECT, dhe min. 1 subquery ne klauzolën FROM) */

SELECT k.ID_Kamarieri, k.Emri, k.Mbiemri, p.Nr_Porosis, p.Koha_porosis
FROM Kamarieri k INNER JOIN Porosia p
ON k.ID_Kamarieri = p.ID_Kamarieri
WHERE k.ID_Kamarieri IN (
		SELECT p1.ID_Kamarieri
		FROM Porosia p1
		WHERE p.Nr_Porosis BETWEEN 21 AND 23 AND p1.ID_Kamarieri IN (
			SELECT k2.ID_Kamarieri
			from Kamarieri k2
			where k2.Adresa = 'Prishtine'));	

Select m.ID_Menaxheri ,m.Emri, m.Mbiemri, p.Nr_tavolines, p.kesh
From Menaxheri m INNER JOIN Pagesa p
ON m.ID_Menaxheri = p.ID_Menaxheri
where exists (
		Select p1.ID_Menaxheri, p1.kesh, p1.POS
		from Pagesa p1 
		where p.kesh > 25 AND p1.ID_Menaxheri IN(
				SELECT m2.ID_Menaxheri 
				FROM Menaxheri m2
				WHERE m2.ID_Menaxheri between 1 and 3));
	
SELECT nrK.ID_Kamarieri , nrK.Nr_Telefonit
FROM NrTel_Kamarieri nrK
WHERE nrK.ID_Kamarieri IN(
			SELECT k.ID_Kamarieri
			FROM Kamarieri k
			WHERE K.ID_Kamarieri NOT IN (
					SELECT K.ID_Kamarieri
					FROM Porosia p
					WHERE k.ID_Kamarieri = p.ID_Kamarieri));

SELECT *
FROM Menaxheri m
WHERE m.ID_Menaxheri IN(
		SELECT k.ID_Menaxheri
		FROM Kontrollon k
		WHERE k.ID_Kamarieri IN( 
				SELECT km.ID_Kamarieri
				FROM Kamarieri km
				WHERE km.ID_Kamarieri = 5));

SELECT *
FROM (
	SELECT DISTINCT kl.ID_Klienti, kl.Emri, kl.Mbiemri, AVG(p.kesh) as MinPagesesKesh
	FROM pagesa p INNER JOIN Klienti kl
	ON p.ID_Klienti = kl.ID_Klienti 
	GROUP BY KL.ID_Klienti, KL.Emri, KL.Mbiemri) AS U
	WHERE MinPagesesKesh < 50


SELECT m.ID_Menaxheri, m.Emri, m.Mbiemri, m.Adresa
FROM Menaxheri m
WHERE M.ID_Menaxheri NOT IN(
			SELECT p.ID_Menaxheri   
			FROM Pagesa p 
			WHERE p.ID_Menaxheri NOT IN(
					SELECT k.ID_Klienti
					FROM Klienti k
					WHERE K.ID_Klienti > 5));

SELECT *
FROM Kamarieri k
WHERE k.ID_Kamarieri IN(
	SELECT p.ID_Kamarieri
	FROM Porosia p
	WHERE p.ID_Shanki IN (
		SELECT kz.ID_Shanki
		FROM Kuzhina kz
		WHERE kz.Orari_i_ndrrimit > '13:00'));
 
SELECT *
FROM Depoisti d
WHERE  d.ID_Depoisti IN (
	SELECT P.ID_Depoisti
	FROM Punon P
	where p.ID_Depo IN(
		SELECT de.ID_Depo
		FROM Depo de
		where de.Koha_Furnizimit = '08:00'));

 
 /*Të realizoni min. 8 query/subquery (4 për student), duke përdorur operacionet e algjebrës relacionale (Union, Prerja, diferenca, etj.)*/
 
SELECT ID_Recepsionisti
FROM Rezervon
INTERSECT
SELECT ID_Recepsionisti
FROM Recepsionisti

Select Emri, Mbiemri, Adresa 
from Kamarieri
EXCEPT 
Select Emri, Mbiemri, Adresa 
from Menaxheri


SELECT ID_Klienti, Emri, Mbiemri
FROM Klienti
UNION
SELECT ID_Recepsionisti, Emri, Mbiemri
FROM Recepsionisti;

select Emri, Mbiemri from Kamarieri
INTERSECT
select Emri, Mbiemri from Menaxheri

Select kesh
from Pagesa
EXCEPT
Select POS
from Pagesa

SELECT ID_Klienti, Emri, Mbiemri
FROM Klienti
UNION
SELECT ID_Recepsionisti, Emri, Mbiemri
FROM Recepsionisti;

Select kesh
from Pagesa
INTERSECT
Select POS
from Pagesa

select Emri , Mbiemri, Adresa
from Kuzhinieri
UNION
select Emri, Mbiemri, Mbiemri 
from Bartenderi

/* Të krijoni min. 8 Proceduara të ruajtura (Stored Procedure, 4 për student). (minimum 2 procedura me parametra input dhe output dhe min. 2 procedura me kombinime të shprehjeve: IF…ELSE, WHILE, CASE)*/


CREATE PROCEDURE Shfaq_Ndrrimin_Kuzhinierve_SipasOrarit(@KohaN time)
AS
BEGIN

	if @KohaN < '16:00'
		select k.ID_Kuzhinieri, k.Emri, k.Mbiemri, k.Adresa
		from Kuzhinieri k inner join Kuzhina kz
		on k.ID_Kuzhina = kz.ID_Kuzhina
		where kz.Orari_i_ndrrimit < '16:00';
	
	else if @KohaN >= '16:00'
		select k.ID_Kuzhinieri, k.Emri, k.Mbiemri, k.Adresa
		from Kuzhinieri k inner join Kuzhina kz
		on k.ID_Kuzhina = kz.ID_Kuzhina
		where kz.Orari_i_ndrrimit >= '16:00';
END



CREATE PROCEDURE FshijRezervimin (@ID INT)
AS
BEGIN
    DELETE FROM Rezervon 
    WHERE ID_Klienti = @ID
END



CREATE PROCEDURE Shfaq_Pagesen_Nga_IDklientit (@ID INT)
AS
BEGIN
    SELECT Pagesa.*
    FROM Pagesa
    WHERE Pagesa.ID_Klienti = @ID
END


CREATE PROCEDURE Tavolinat_e_lira (@Tavolina INT, @IDRezervimit INT, @koha TIME, @numriP INT, @IDkl INT, @IDRec INT)
AS
BEGIN
DECLARE @NumriRezervimeve INT;

SELECT @NumriRezervimeve = COUNT(Koha_rezervimit) 
FROM Rezervon;

WHILE (@NumriRezervimeve < 25)
BEGIN
	INSERT INTO Rezervon (ID_Klientii, Koha_rezervimit, Nr_Personave, ID_Klienti, ID_Recepsionisti)
	VALUES (@IDRezervimit, @koha, @numriP, @IDkl, @IDRec);

	SELECT @NumriRezervimeve = COUNT(Koha_rezervimit) 
	FROM Rezervon;
END;

PRINT 'Nuk ka vend te lire per rezervim';
END;



CREATE PROCEDURE Shfaq_Pazarin_Total (@Method VARCHAR(50))
AS
BEGIN
    DECLARE @PazariTotal MONEY

    IF @PazariTotal = 'Kesh'
        SET @PazariTotal = (SELECT SUM(Kesh) FROM Pagesa)
    ELSE IF @Method = 'POS'
        SET @PazariTotal = (SELECT SUM(POS) FROM Pagesa)
    ELSE
        SET @PazariTotal= (SELECT SUM(Kesh + POS) FROM Pagesa)

    SELECT @PazariTotal
END



CREATE PROCEDURE ShfaqRezerviminSipasOres (@Ora TIME)
AS
BEGIN
    SELECT * FROM Rezervon
    WHERE CAST(Koha_rezervimit AS TIME) = '16:00'
END



CREATE PROCEDURE ShfaqPorositeEkamarierve (@Ora Time)
AS
BEGIN
	
	IF @Ora < '16:00'
		select k.ID_Kamarieri, k.Emri, k.Mbiemri, p.Nr_Porosis ,p.Koha_porosis
		from Kamarieri k inner join Porosia p
		on k.ID_Kamarieri = p.ID_Kamarieri
		where p.Koha_porosis < '16:00'
		
	ELSE IF @ORA >= '16:00'
		
		select k.ID_Kamarieri, k.Emri, k.Mbiemri, p.Nr_Porosis ,p.Koha_porosis
		from Kamarieri k inner join Porosia p
		on k.ID_Kamarieri = p.ID_Kamarieri
		where p.Koha_porosis >= '16:00' 
END


CREATE PROCEDURE PermirsojePagesen (@PaymentID INT, @Cash MONEY, @POS MONEY)
AS
BEGIN
    UPDATE Pagesa
    SET kesh = 
        CASE 
            WHEN @Cash = 0 THEN NULL 
            ELSE @Cash 
        END, 
        POS = 
        CASE 
            WHEN @POS = 0 THEN NULL 
            ELSE @POS 
        END
    WHERE ID_Klientii = @PaymentID;
END;