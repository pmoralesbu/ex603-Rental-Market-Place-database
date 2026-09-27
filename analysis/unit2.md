## Diagram to Database 

# Constraint Items in Database & Why

The first constraints was on the viewings table because we needed a way to keep the data for analysis in the long run.  So a foreign key or FK on the viewings.renter_id was the way to keep that data if a renter viewed a vehicle on the web application.  We did not CASCADE this because it would delete the entire data set we needed.  WE RESTRICT it so not delete, collect the data, and continue with it still generating views if any.  This is the historical picture you get from the analysis needed on viewings.  RESTRICT protects that data.  

The second constraint was on the viewings.property_id which did the same thing at the renter_id to continue to collect the data and save the historical viewings on which property or vehicle is being viewed more than the other.  We used RESTRICT here as well to protect any deleting of that data.  

The last table is the junction table and we have two constraints there.  However, we use CASCADE which will delete the data and not save it if we match property id or amenity id.  This is amenities on any vehicle in the rental application and what is the property id of said vehicle being viewed.   Let me be clear, the only thing being deleted is the association with the deleted amenity and vice versa.  

# CHECK constraints & Why

We have a CHECK constraint on the viewings table due to viewing purposes of a vehicle by a customer or rental, same thing.  We must make sure that any viewing time is recorded starting at 0 and nothing negative as time does not start as a negative number.  That mean our duration_min >= 0 within the code base as a check on time entered or recorded.  This prevents this input data from entering

The second CHECK constraint is the daily rate of the vehicle by a renter or customer.  This protect the system integrity from accepting any negative numbers on the daily rate throughout the system itself.  



