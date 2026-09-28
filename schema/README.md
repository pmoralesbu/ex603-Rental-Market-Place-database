## Schema README File

The tables were add with five in total and they are (renters, properties, amenities, viewings, and listing_amenities-junction table).  We created a rental marketplace database to track, fulfill, and monitor all aspects of a vehicle rental marketplace.  The schema separates the main entities renters, properties, and amenities from the relationships and events that connect them. The viewing table is for renters and properties and each viewing references one renter or customer and one property (vehicle).  The properties and amenities have a many to many relationship and the listing_amenities junction table makes this connection for both.  There are a few constraints for protection of data integrity and check on daily rate and viewing timestamp of each vehicle. The following is listed as such;

Renters - Stores all user who view rental properties
properties - are the vehicles renters will view and what is listed, with all names, availability status, and daily rates.
amenities - Stores the amenities that may be associated with each property, such as, gps, flat screen satellite radio.
viewings - records all the data when renter view the properties, including the time spent viewing that the duration.
listing_amenities - junction table connecting properties and amenities.
