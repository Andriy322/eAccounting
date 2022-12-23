USE eAccountingDB

SELECT * FROM Role
SELECT * FROM Location
SELECT * FROM RequestType
SELECT * FROM ApproveStatus
SELECT * FROM SupportStatus
SELECT * FROM Priority
SELECT * FROM Login
SELECT * FROM Organization
SELECT * FROM User_
SELECT * FROM Requests




  INSERT INTO Role 
  (RoleName)
  Values 
  ('Admin'),
  ('Requestor'),
  ('Organization');
  
   INSERT INTO Location 
  (Country,City,Address)
  Values 
  ('Ukraine','Lviv','Bandera 12'),
  ('Ukraine', 'Lviv', 'Gold 5'),
  ('Ukraine','Kyiv','Ovrutska 24'),
  ('Ukraine', 'Kyiv', 'Dehtiarivska 11'),
  ('Ukraine','Rivne','Popovycha 18'),
  ('Ukraine', 'Rivne', 'Chernyshova 42'),
  ('Ukraine','Chernihiv','Mstyslavska 55A'),
  ('Ukraine', 'Khmelnytskyi', 'Franka 36'),
  ('Ukraine','Khmelnytskyi','Kuprina 61'),
  ('Ukraine', 'Chernihiv', 'Honcha 84'),
  ('Ukraine','Kharkiv','Akademika Pavlova 145'),
  ('Ukraine', 'Kharkiv', 'Sportyvna 13');


  INSERT INTO RequestType 
  (RequestName)
  Values 
  ('Medical'),
  ('Social'),
  ('Job search');


   INSERT INTO ApproveStatus 
  (ApproveName)
  Values 
  ('Approved'),
  ('Not approved');


   INSERT INTO SupportStatus 
  (SupportStatusName)
  Values 
  ('New'),
  ('Cancelled'),
  ('In progress'),
  ('Done');


  INSERT INTO Priority 
  (PriorityName)
  Values 
  ('Low'),
  ('Medium'),
  ('High');
  

  

   --insert into users
   INSERT INTO Login 
  (Login_,Password,Email,Phone,Role_id)
  Values 
  ('Admin','AdminPassword2002','andrii.fostiak.2002@gmail.com','0986155669',1),
  ('OlegShevchenko','OlegShevchenko1991','OlegShevchenko@gmail.com','0634578669',2),
  ('IgorHoncha','IgorHoncha99','IgorHoncha@gmail.com','0678394045',2),
  ('BohdanSummer','BohdanSummer2000','BohdanSummer@gmail.com','0689237015',2),
  ('VictorKiborg','VictorKiborg1995','VictorKiborg@gmail.com','6888927702',2),
  ('AnnaOscol','AnnaOscol1990','AnnaOscol@gmail.com','9865498926',2),
  ('VikaOmelian','VikaOmelian1994','VikaOmelian@gmail.com','7392851445',2),
  ('AnyaSpy','AnyaSpy1978','AnyaSpy@gmail.com','9859840176',2),
  ('OlenaVitol','OlenaVitol1986','OlenaVitol@gmail.com','9749418650',2),
  ('PeaceDirect','PeaceDirect12','PeaceDirect@gmail.com','0986155789',3),
  ('InternationalRescue','InternationalRescue14','InternationalRescue@gmail.com','0732456732',3),
  ('LifeSupport','LifeSupport211','LifeSupport@gmail.com','0985566971',3);


  --3 users for organization role
   INSERT INTO Organization 
  (OrganizationName,Location_id,Login_id,ApproveStatus_id,CreateDate,UpdateDate,ApproveDate,Details)
  Values 
  ('Peace Direct',2,10,1,'2022-09-25','2002-10-16','2002-09-26','We want to help everyone we can to return to normal life after the invasion of the terrorist state.'),
  ('International Rescue',4,11,1,'2002-10-01','2002-10-04','2002-10-02','An organization that values ??the life of everyone who gets into trouble.'),
  ('Life Support',11,12,2,'2002-11-30','2002-11-30','','Life support to return to normal life.');



  ----insert organizations
  --INSERT INTO Logins 
  --(Email,Phone,Login,Password)
  --Values 
  --('PeaceDirect@gmail.com','0986155789','PeaceDirect','PeaceDirect12'),
  --('InternationalRescue@gmail.com','0732456732','InternationalRescue','InternationalRescue14'),
  --('LifeSupport@gmail.com','0985566971','LifeSupport','LifeSupport211');

  -- INSERT INTO Organization 
  --(OrganizationName,ApproveStatus_id,Location_id,Logins_id)
  --Values 
  --('Peace Direct',1,2,10),
  --('International Rescue',1,4,11),
  --('Life Support',2,11,12);

  --INSERT INTO ProgramUser 
  --(FirstName,LastName,MiddleName,Birthday,TaxpayerCard,Logins_id,SupportDescribe,Role_id,Location_id,SupportType_id,Priority_id,ApproveStatus_id)
  --Values 
  --('Andrii','Fostiak','Igorovich','2002-02-23','1234567890',1,'',1,1,3,1,1);

  --INSERT INTO ProgramUser 
  --(SupportDescribe,SupportType_id,Priority_id,ApproveStatus_id)
  --Values 
  --('Oncopathology',1,4,1),
  --('My house was destroyed and I need social assistance to pay for rental of temporary housing',2,1,1),
  --('I have two children under 18 of which one child with invalidity',2,3,1),
  --('Primary immunodeficiency',1,2,1),
  --('I lost my job in Khmelnytskyi due to a rocket hitting the factory',3,1,1),
  --('Diabetes',1,4,1),
  --('I lost my job due to the russian attack and constant shelling of Chernigov',3,1,1),
  --('Low-income family with many children, financial assistance is needed',2,2,1);


  INSERT INTO User_ 
  (FirstName,LastName,MiddleName,Birthday,TaxpayerCard,CreateDate,UpdateDate,Location_id,Login_id)
  Values 
  ('Andrii','Fostiak','Igorovich','2002-02-23','1234567890','2022-09-23','2002-11-22',1,1),
  ('Oleg','Shevchenko','Igorovich','1991-01-12','2522006775','2022-11-24','2002-11-24',3,2),
  ('Igor','Honcha','Igorovich','1999-04-13','2289143588','2022-11-24','2002-11-25',5,3),
  ('Bohdan','Summer','Ostapovich','2000-07-21','8947216479','2022-11-24','2002-11-24',6,4),
  ('Victor','Kiborg','Andriyovych','1995-01-03','7721261532','2022-11-25','2002-11-25',7,5),
  ('Anna','Oscol','Bohdanivna','1990-10-09','2926564029','2022-11-25','2002-11-25',8,6),
  ('Vika','Omelian','Olegivna','1994-12-07','6804909178','2022-11-26','2002-11-26',9,7),
  ('Anya','Spy','Semenivna','1978-11-18','9498277047','2022-11-27','2002-11-27',10,8),
  ('Olena','Vitol','Volodymyrivna','1986-06-06','4432042545','2022-11-27','2022-11-28',12,9);


  INSERT INTO Requests 
  (User_id,RequestType_id,ApproveStatus_id,SupportStatus_id,Priority_id,Organization_id,CreateDate,UpdateDate,RequestDetails)
  Values 
  (2,1,1,1,3,NULL,'2022-11-24','2002-11-24','Oncopathology'),
  (3,2,1,1,2,NULL,'2022-11-24','2002-11-24','My house was destroyed and I need social assistance to pay for rental of temporary housing'),
  (4,2,1,3,2,1,'2022-11-24','2002-11-24','I have two children under 18 of which one child with invalidity'),
  (5,1,1,3,3,2,'2022-11-25','2002-11-25','Primary immunodeficiency'),
  (6,3,1,1,1,NULL,'2022-11-25','2002-11-25','I lost my job in Khmelnytskyi due to a rocket hitting the factory'),
  (7,1,1,1,3,NULL,'2022-11-26','2002-11-26','Diabetes'),
  (8,3,1,1,2,NULL,'2022-11-27','2002-11-27','I lost my job due to the russian attack and constant shelling of Chernigov'),
  (9,2,2,1,1,NULL,'2022-11-28','2002-11-28','Low-income family with many children, financial assistance is needed');


    
  --INSERT INTO Organization 
  --(OrganizationName,ApproveStatus_id,Location_id,Email,Phone,Login,Password)
  --Values 
  --('Peace Direct',1,2,'PeaceDirect@gmail.com','0986155789','PeaceDirect','PeaceDirect12'),
  --('International Rescue',1,4,'InternationalRescue@gmail.com','0732456732','InternationalRescue','InternationalRescue14'),
  --('Life Support',2,11,'LifeSupport@gmail.com','0985566971','LifeSupport','LifeSupport211');

   
  
 

  ----admin insert
  -- INSERT INTO ProgramUser 
  --(FirstName,LastName,MiddleName,Birthday,Phone,TaxpayerCard,Login,Password,Email,SupportDescribe,Role_id,Location_id,SupportType_id,Priority_id,ApproveStatus_id)
  --Values 
  --('Andrii','Fostiak','Igorovich','2002-02-23','0986155669','1234567890','Admin','AdminPassword2002','andrii.fostiak.2002@gmail.com','',1,1,3,1,1);

  ----other users insert
  ----approve table + priority table sent here
  --INSERT INTO ProgramUser 
  --(FirstName,LastName,MiddleName,Birthday,Phone,TaxpayerCard,Login,Password,Email,SupportDescribe,Role_id,Location_id,SupportType_id,Priority_id,ApproveStatus_id)
  --Values 
  --('Oleg','Shevchenko','Igorovich','1991-01-12','0634578669','2522006775','OlegShevchenko','OlegShevchenko1991','OlegShevchenko@gmail.com','Oncopathology',2,3,1,4,1),
  --('Igor','Honcha','Igorovich','1999-04-13','0678394045','2289143588','IgorHoncha','IgorHoncha99','IgorHoncha@gmail.com','My house was destroyed and I need social assistance to pay for rental of temporary housing',2,5,2,1,1),
  --('Bohdan','Summer','Ostapovich','2000-07-21','0689237015','8947216479','BohdanSummer','BohdanSummer2000','BohdanSummer@gmail.com','I have two children under 18 of which one child with invalidity',2,6,2,3,1),
  --('Victor','Kiborg','Andriyovych','1995-01-03','6888927702','7721261532','VictorKiborg','VictorKiborg1995','VictorKiborg@gmail.com','Primary immunodeficiency',2,7,1,2,1),
  --('Anna','Oscol','Bohdanivna','1990-10-09','9865498926','2926564029','AnnaOscol','AnnaOscol1990','AnnaOscol@gmail.com','I lost my job in Khmelnytskyi due to a rocket hitting the factory',2,8,3,1,1),
  --('Vika','Omelian','Olegivna','1994-12-07','7392851445','6804909178','VikaOmelian','VikaOmelian1994','VikaOmelian@gmail.com','Diabetes',2,9,1,4,1),
  --('Anya','Spy','Semenivna','1978-11-18','9859840176','9498277047','AnyaSpy','AnyaSpy1978','AnyaSpy@gmail.com','I lost my job due to the russian attack and constant shelling of Chernigov',2,10,3,1,1),
  --('Olena','Vitol','Volodymyrivna','1986-06-06','9749418650','4432042545','OlenaVitol','OlenaVitol1986','OlenaVitol@gmail.com','Low-income family with many children, financial assistance is needed',2,12,2,2,1);

  --already inserted
  

  