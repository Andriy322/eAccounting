 
  USE eAccountingDB;
  --DROP TABLE Role;
  --DROP TABLE Location;
  --DROP TABLE RequestType;
  --DROP TABLE Priority;
  --DROP TABLE ApproveStatus;
  --DROP TABLE Login;
  --DROP TABLE SupportStatus;
  --DROP TABLE User;
  --DROP TABLE Organization;
  --DROP TABLE Requests
  
  Create table Role
  (
  Role_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
  RoleName varchar(255) NOT NULL
  );
  Create table Location
  (
   Location_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
   Country varchar(255) not null,
   City varchar(255) not null,
   Address varchar(255) not null

  );

  Create table RequestType
  (
  RequestType_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
  RequestName varchar(255) NOT NULL
  );


   Create table Priority
  (
   Priority_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
   PriorityName varchar(255) NOT NULL
  );

   Create table ApproveStatus
  (
   ApproveStatus_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
   ApproveName varchar(255) NOT NULL
  );

  
   Create table Login
  (
   Login_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
   Login_ varchar(255) NOT NULL,
   Password varchar(255) NOT NULL,
   Email varchar(255),
   Phone varchar(255),
   Role_id int FOREIGN KEY REFERENCES Role(Role_id),

  );

   Create table SupportStatus
  (
   SupportStatus_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
   SupportStatusName varchar(255) NOT NULL
  );


  Create table User_
  (
  User_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
  FirstName varchar(255),
  LastName varchar(255),
  MiddleName varchar(255),
  Birthday date,
  TaxpayerCard varchar(255),
  CreateDate date,
  UpdateDate date,
  Location_id int FOREIGN KEY REFERENCES Location(Location_id),
  Login_id int FOREIGN KEY REFERENCES Login(Login_id)

  );


   Create table Organization
  (
   Organization_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
   OrganizationName varchar(255) NOT NULL,
   Location_id int FOREIGN KEY REFERENCES Location(Location_id),
   Login_id int FOREIGN KEY REFERENCES Login(Login_id),
   ApproveStatus_id int FOREIGN KEY REFERENCES ApproveStatus(ApproveStatus_id),

   CreateDate date,
   UpdateDate date,
   ApproveDate date,

   Details varchar(255)

  );
  
   Create table Requests
   (
   Request_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
   User_id int FOREIGN KEY REFERENCES User_(User_id),
   RequestType_id int FOREIGN KEY REFERENCES RequestType(RequestType_id),
   ApproveStatus_id int FOREIGN KEY REFERENCES ApproveStatus(ApproveStatus_id),
   SupportStatus_id int FOREIGN KEY REFERENCES SupportStatus(SupportStatus_id),
   Priority_id int FOREIGN KEY REFERENCES Priority(Priority_id),
   Organization_id int FOREIGN KEY REFERENCES Organization(Organization_id),
   CreateDate date,
   UpdateDate date,
   RequestDetails varchar(255)
  
   );


  --Create table ProgramUser
  --(
  --ProgramUser_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
  --Role_id int FOREIGN KEY REFERENCES Role(Role_id),
  --Location_id int FOREIGN KEY REFERENCES Location(Location_id),
  --SupportType_id int FOREIGN KEY REFERENCES SupportType(SupportType_id),
  --Priority_id int FOREIGN KEY REFERENCES Priority(Priority_id),
  --ApproveStatus_id int FOREIGN KEY REFERENCES ApproveStatus(ApproveStatus_id),
  --Logins_id int FOREIGN KEY REFERENCES Logins(Logins_id),

  --FirstName varchar(255),
  --LastName varchar(255),
  --MiddleName varchar(255),
  --Birthday date,
  --TaxpayerCard varchar(255),
  --SupportDescribe varchar(255),

  ----Login varchar(255),
  ----Password varchar(255),
  ----Email varchar(255),
  ----Phone varchar(255)
  

  --);
  

  

 -- Create table Organization
 -- (
 --   Organization_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
 --   OrganizationName varchar(255) NOT NULL, 
 --   ApproveStatus_id int FOREIGN KEY REFERENCES ApproveStatus(ApproveStatus_id),
 --   Location_id int FOREIGN KEY REFERENCES Location(Location_id),
	--Logins_id int FOREIGN KEY REFERENCES Logins(Logins_id),

	----Login varchar(255),
	----Password varchar(255),
	----Email varchar(255),
	----Phone varchar(255),
	

	----need to add phone 
	----email
	----login
	----password
 
   
 --  --ready

 -- );

  

 

  
  
 

  

 -- Create table OrganizationUser
 -- (

 --  OrganizationUser_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
 --  ProgramUser_id int FOREIGN KEY REFERENCES ProgramUser(ProgramUser_id),
 --  --foreign key from User
 --  Organization_id int FOREIGN KEY REFERENCES Organization(Organization_id),
 --  SupportStatus_id int FOREIGN KEY REFERENCES SupportStatus(SupportStatus_id),
 --  --foreign key from Organization
   
 --   --foreign key from SupportStatus
	
	----ready
 -- );
  

   
 
 

 
  --ApproveStatus_id int FOREIGN KEY REFERENCES ApproveStatus(ApproveStatus_id)