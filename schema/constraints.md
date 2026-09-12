# The Integrity Constraints

## Section A. Constraints that protect the data
## Section B. Foreign key ON DELETE behavior

Section A.
1. renters (customers) - Actor\
   **renter_id** is PK and cannot be null or duplicated. - All databases must have a unique id to pull from\
   **renter_id** is always a positive number.  - No negative number assignment to renter_id\
   **display_name** cannot be empty - All renters (customer) must have a display name while viewing site

   No FK in this database table. One PK for renter_id

2. properties (cargo van list) - producer\
   **property_id** is the PK cannot be null or duplicated. - This identifies each vehicle listing on site\
   **property_id** is always a positive number as well, never a negative number or zero\
   **display_name** all vehicles must have a name cannot be empty\]
   **is_active** boolean true/false - Either a vehicle is active for viewing or it is inactive for not able to view anymore, but we keep the viewing data of it.\
   **daily_rate** always greater > 0 (zero) - no negative numbers per each rental of vehicle or its rate daily.

   No FK in this database table.  One PK for property_id 

3. viewings (vehicle viewing & duration_min to measure [bounce rate so to say of viewer]\
   **viewing_id** is the PK cannot be null or duplicated like the rest. - Unique to view each particular vehicle in list.\
   **renter_id** connect to renters table and always on an existing renter (customer)\
   **property_id** connect to properties tables and always on an existing property (vehicle in list)\
   **viewed_at** cannot be null always needs a time viewed and will always get a timestamp on it.\
   **duration_min** metric to be used to measure time viewing each vehicle in list, always greater than > 0 (zero), never negative.\

   Table contains two FKs, both reference any viewing by a renter (customer) that has shown some viewing on any\ vehicle.  We cannot delete it as its restricted due to keeping the data for the duration_metric.  renter_id and\ property_id are ON DELETE restricted in terms of viewing purposes. We can just inactivate a vehicle/property instead.\

4









   
