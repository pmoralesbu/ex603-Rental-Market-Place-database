# The Integrity Constraints

## Section A. Constraints that protect the data
## Section B. Foreign key ON DELETE behavior

Section A.
1. renters (customers) - Actor
   renter_id is PK and cannot be NULL or duplicated. - All databases must have a unique id to pull from
   renter_id is always a positive number.  - No negative number assignment to renter_id
   display_name cannot be empty - All renters (customer) must have a display name while viewing site

   No FK in this database table.
