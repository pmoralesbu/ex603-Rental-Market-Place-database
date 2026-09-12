# Cargo Van Rental Marketplace Database Creation
Philip Morales. \
Project Title: Rental Marketplace. \
Database Used: PostgreSQL with pgAdmin
Proper ERD platform Used: drawio

This project models a relational database for a last mile cargo van rental marketplace that tracks the following items; renters (customer who is going to browse the vehicles to rent), properties (Cargo vans - make & model), viewings (Cargo van availability or listings available), amenities (Cargo van features & equipment), listing_amenities (Junction table - MtM of amenities to vehicle listing), and duration_min (How long a customer view a particular Cargo van on site), which are all part of a property within the marketplace. 

Theme: Rental Marketplace

Domain\
The cargo van rental marketplace is where any customers (renters) is able to view all cargo van listing from Ford Transit 150 or 250 and Ram Promasters cargo van from 1500, 2500, and 3500 sizes. The customers is able to explore vehicle listings on site, compare daily rates for each vehicle, and review all possible amenities such as high roofs (depending on sizes), cargo shelves, vehicle safety cameras, interior lights, and any other features available.  The properties table are the cargo van listings for the site.  The amenities table is for all the features available to the site.   
