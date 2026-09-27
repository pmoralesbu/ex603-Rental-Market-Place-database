
-- -------------------------------------------------
-- EX 603 Assignment 2 - schema.sql
-- Theme: Rental Marketplace
-- Author: Philip Morales
-- Target: PostgreSQL 18+
-- -------------------------------------------------


-- -------------------------------------------------
-- RESET
-- Drop tables in REVERSE creation order.
-- This allows the script to be run repeatedly during development.
-- --------------------------------------------------

DROP TABLE IF EXISTS listing_amenities CASCADE;
DROP TABLE IF EXISTS viewings CASCADE;
DROP TABLE IF EXISTS amenities CASCADE;
DROP TABLE IF EXISTS properties CASCADE;
DROP TABLE IF EXISTS renters CASCADE;

-- -----------------------------------------
-- Table 1: renters
-- This table create the renterid and is generated
-- always as identity to who is using the system
-- Next, we create the display name of who is registered
-- to the rental application system. This is the first
-- table in the application
-- ----------------------------------------

CREATE TABLE renters (
	renter_id INTEGER GENERATED ALWAYS AS IDENTITY,
	display_name VARCHAR(100) NOT NULL,

	CONSTRAINT pk_renters PRIMARY KEY (renter_id)
);

-- -----------------------------------------
-- Table 2: properties
-- This is the second table of the rental marketplace 
-- system.  You are given a property id for each 
-- vehicle presented in the system.  The display name
-- is the name of each vehicle in the system.  We display
-- if vehicle is active in the system as either active or not active
-- the daily rate is the price of each vehicle rental at the time
-- of rental.
-- ----------------------------------------

CREATE TABLE properties (
	property_id INTEGER GENERATED ALWAYS AS IDENTITY,
	display_name VARCHAR(150) NOT NULL,
	is_active BOOLEAN NOT NULL,
	daily_rate NUMERIC(10,2) NOT NULL,

	CONSTRAINT pk_properties PRIMARY KEY (property_id),
    CONSTRAINT chk_properties_daily_rate CHECK (daily_rate > 0)
);


-- -----------------------------------------
-- Table 3: amenities
-- This is the third table that displays they amenities within
-- each vehicle rental.  Amenities range from satellite radio, gps,
-- leather, etc.  and these are the names of each
-- ----------------------------------------

CREATE TABLE amenities (
    amenity_id INTEGER GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100) NOT NULL,

    CONSTRAINT pk_amenities PRIMARY KEY (amenity_id),
    CONSTRAINT uq_amenities_name UNIQUE (name)
);

-- -----------------------------------------
-- Table 4: viewings
-- This is the forth table.  Shows the viewing id is a vehicle was
-- viewed and looked at on the web application, the renter id of the
-- person who viewed that rental, and vehicle type is the property id
-- and at what time they viewed it.  and also how long 
-- they viewed it for. 
-- ----------------------------------------

CREATE TABLE viewings (
    viewing_id INTEGER GENERATED ALWAYS AS IDENTITY,
    renter_id INTEGER NOT NULL,
    property_id INTEGER NOT NULL,
    viewed_at TIMESTAMP NOT NULL,
    duration_min INTEGER NOT NULL,

    CONSTRAINT pk_viewings PRIMARY KEY (viewing_id),

    CONSTRAINT fk_viewings_renter
        FOREIGN KEY (renter_id)
        REFERENCES renters(renter_id)
        ON DELETE RESTRICT,

    CONSTRAINT fk_viewings_property
        FOREIGN KEY (property_id)
        REFERENCES properties(property_id)
        ON DELETE RESTRICT,

    CONSTRAINT chk_viewings_duration
        CHECK (duration_min >= 0)
);


-- -----------------------------------------
-- Table 5: listing_amenities
-- This is the last table and junction of both rental vehicle
-- and its amenities provided. 
-- ----------------------------------------

CREATE TABLE listing_amenities (
    property_id INTEGER NOT NULL,
    amenity_id INTEGER NOT NULL,

    CONSTRAINT pk_listing_amenities
        PRIMARY KEY (property_id, amenity_id),

    CONSTRAINT fk_listing_amenities_property
        FOREIGN KEY (property_id)
        REFERENCES properties(property_id)
        ON DELETE CASCADE,

    CONSTRAINT fk_listing_amenities_amenity
        FOREIGN KEY (amenity_id)
        REFERENCES amenities(amenity_id)
        ON DELETE CASCADE
);
