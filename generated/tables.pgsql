--
-- Class Address as table address
--

CREATE TABLE "address" (
  "id" serial,
  "areaId" integer NOT NULL,
  "wardId" integer NOT NULL,
  "cityId" integer NOT NULL,
  "mcId" integer NOT NULL,
  "districtId" integer NOT NULL,
  "stateId" integer NOT NULL,
  "countryId" integer NOT NULL,
  "fullAddress" text NOT NULL,
  "landmark" text NOT NULL,
  "pincode" text NOT NULL
);

ALTER TABLE ONLY "address"
  ADD CONSTRAINT address_pkey PRIMARY KEY (id);


--
-- Class Area as table area
--

CREATE TABLE "area" (
  "id" serial,
  "area" text NOT NULL,
  "cityId" integer NOT NULL
);

ALTER TABLE ONLY "area"
  ADD CONSTRAINT area_pkey PRIMARY KEY (id);


--
-- Class City as table city
--

CREATE TABLE "city" (
  "id" serial,
  "districtId" integer NOT NULL,
  "city" text NOT NULL
);

ALTER TABLE ONLY "city"
  ADD CONSTRAINT city_pkey PRIMARY KEY (id);


--
-- Class Country as table country
--

CREATE TABLE "country" (
  "id" serial,
  "country" text NOT NULL
);

ALTER TABLE ONLY "country"
  ADD CONSTRAINT country_pkey PRIMARY KEY (id);


--
-- Class District as table district
--

CREATE TABLE "district" (
  "id" serial,
  "stateId" integer NOT NULL,
  "district" text NOT NULL
);

ALTER TABLE ONLY "district"
  ADD CONSTRAINT district_pkey PRIMARY KEY (id);


--
-- Class MaintainenceCharges as table maintainence_charges
--

CREATE TABLE "maintainence_charges" (
  "id" serial,
  "socId" integer NOT NULL,
  "fromDate" timestamp without time zone NOT NULL,
  "toDate" timestamp without time zone NOT NULL,
  "oneBhk" integer NOT NULL,
  "twoBhk" integer NOT NULL,
  "threeBhk" integer NOT NULL,
  "fourBhk" integer NOT NULL,
  "persqft" integer NOT NULL,
  "twoWheel" integer NOT NULL,
  "threeWheel" integer NOT NULL,
  "fourWheel" integer NOT NULL,
  "other" integer NOT NULL,
  "rental" integer NOT NULL,
  "nonOccupancy" integer NOT NULL,
  "year" integer NOT NULL,
  "penalty" integer NOT NULL,
  "dueDate" integer NOT NULL,
  "isActive" boolean NOT NULL
);

ALTER TABLE ONLY "maintainence_charges"
  ADD CONSTRAINT maintainence_charges_pkey PRIMARY KEY (id);


--
-- Class MaintenanceBook as table maintenance_book
--

CREATE TABLE "maintenance_book" (
  "id" serial,
  "socId" integer NOT NULL,
  "receiptId" integer NOT NULL,
  "roomNo" integer NOT NULL,
  "block" text NOT NULL,
  "year" integer NOT NULL,
  "ownerId" integer NOT NULL,
  "paymentMode" text NOT NULL,
  "paymentDate" timestamp without time zone NOT NULL,
  "collectedBy" integer NOT NULL,
  "month" text NOT NULL,
  "penalty" integer NOT NULL
);

ALTER TABLE ONLY "maintenance_book"
  ADD CONSTRAINT maintenance_book_pkey PRIMARY KEY (id);


--
-- Class Members as table members
--

CREATE TABLE "members" (
  "id" serial,
  "name" text NOT NULL,
  "age" integer NOT NULL,
  "mobile" text NOT NULL,
  "email" text NOT NULL,
  "aadharNo" text NOT NULL,
  "panNo" text NOT NULL,
  "dob" timestamp without time zone NOT NULL,
  "blockCount" integer NOT NULL,
  "mobileModel" text NOT NULL,
  "status" boolean NOT NULL,
  "isActive" boolean NOT NULL,
  "post" text,
  "deviceId" text
);

ALTER TABLE ONLY "members"
  ADD CONSTRAINT members_pkey PRIMARY KEY (id);


--
-- Class SocietyAmenities as table soc_amenities
--

CREATE TABLE "soc_amenities" (
  "id" serial,
  "socId" integer NOT NULL,
  "bikeParking" boolean NOT NULL,
  "carParking" boolean NOT NULL,
  "powerBackup" boolean NOT NULL,
  "securitySystem" boolean NOT NULL,
  "lift" boolean NOT NULL,
  "waterSupplyAllDay" boolean NOT NULL,
  "gym" boolean NOT NULL,
  "solarEnergy" boolean NOT NULL,
  "rainwaterHarvesting" boolean NOT NULL,
  "nearbyHospital" boolean NOT NULL,
  "nearbySchool" boolean NOT NULL,
  "nearbyShopping" boolean NOT NULL,
  "onSitMaintenance" boolean NOT NULL
);

ALTER TABLE ONLY "soc_amenities"
  ADD CONSTRAINT soc_amenities_pkey PRIMARY KEY (id);


--
-- Class SocBody as table soc_body
--

CREATE TABLE "soc_body" (
  "id" serial,
  "socId" integer NOT NULL,
  "chairman" integer NOT NULL,
  "secretary" integer NOT NULL,
  "treasurer" integer NOT NULL,
  "viceChairman" integer NOT NULL,
  "viceSecretary" integer NOT NULL,
  "viceTreasurer" integer NOT NULL,
  "members" json NOT NULL,
  "year" integer NOT NULL
);

ALTER TABLE ONLY "soc_body"
  ADD CONSTRAINT soc_body_pkey PRIMARY KEY (id);


--
-- Class Society as table society
--

CREATE TABLE "society" (
  "id" serial,
  "socName" text NOT NULL,
  "socRegNo" text NOT NULL,
  "socAddressId" integer NOT NULL,
  "totalRoom" integer NOT NULL,
  "totalBlock" integer NOT NULL,
  "totalShop" integer NOT NULL,
  "totalFloor" json NOT NULL,
  "maxRoomsEachFloor" json NOT NULL,
  "latitude" double precision NOT NULL,
  "longitude" double precision NOT NULL,
  "landmark" text NOT NULL
);

ALTER TABLE ONLY "society"
  ADD CONSTRAINT society_pkey PRIMARY KEY (id);


--
-- Class Rooms as table rooms
--

CREATE TABLE "rooms" (
  "id" serial,
  "socId" integer NOT NULL,
  "room" text NOT NULL,
  "roomNo" integer NOT NULL,
  "owner" text NOT NULL,
  "onRent" boolean NOT NULL,
  "onSale" boolean NOT NULL,
  "carpetArea" integer NOT NULL,
  "roomStructure" text NOT NULL,
  "balcony" boolean NOT NULL,
  "isOccupied" boolean NOT NULL,
  "totalMembers" integer NOT NULL,
  "roomExist" boolean NOT NULL
);

ALTER TABLE ONLY "rooms"
  ADD CONSTRAINT rooms_pkey PRIMARY KEY (id);

ALTER TABLE ONLY "rooms"
  ADD CONSTRAINT rooms_fk_0
    FOREIGN KEY("socId")
      REFERENCES society(id)
        ON DELETE CASCADE;

--
-- Class States as table states
--

CREATE TABLE "states" (
  "id" serial,
  "countryId" integer NOT NULL,
  "state" text NOT NULL
);

ALTER TABLE ONLY "states"
  ADD CONSTRAINT states_pkey PRIMARY KEY (id);


--
-- Class UserRoom as table user_room
--

CREATE TABLE "user_room" (
  "id" serial,
  "socId" integer NOT NULL,
  "userId" integer NOT NULL,
  "roomId" integer NOT NULL,
  "fromDate" timestamp without time zone NOT NULL,
  "toDate" timestamp without time zone,
  "isOwner" boolean NOT NULL,
  "isResident" boolean NOT NULL,
  "isRental" boolean NOT NULL,
  "userRoomStatus" boolean NOT NULL,
  "roomDetails" json
);

ALTER TABLE ONLY "user_room"
  ADD CONSTRAINT user_room_pkey PRIMARY KEY (id);


--
-- Class Vehicles as table vehicles
--

CREATE TABLE "vehicles" (
  "id" serial,
  "vehicleNo" text NOT NULL,
  "ownerId" integer NOT NULL,
  "roomId" integer NOT NULL,
  "vehicleType" integer NOT NULL,
  "entryDate" timestamp without time zone NOT NULL,
  "updatedDate" timestamp without time zone NOT NULL
);

ALTER TABLE ONLY "vehicles"
  ADD CONSTRAINT vehicles_pkey PRIMARY KEY (id);


