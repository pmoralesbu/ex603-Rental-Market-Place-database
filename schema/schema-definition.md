# Five Relational Schemas

**Theme:** Cargo van Rental Marketplace  

This relational design models a rental marketplace where renters browse cargo-van rental listings. The five relations are `renters`, `properties`, `viewings`, `amenities`, and `listing_amenities`.

1. renters (customers) - Actor per theme\
   | Attribute | Domain | Key |\
   | renter_id | integer | PK |\
   | display_name | character varying(100) |   |

2. properties (vehicle listings) - producer per theme\
   | Attribute | Domain | Key |\
   | property_id | integer | PK |\
   | display_name | character varying(150) |   |\
   | is_active | boolean |   |\
   | daily_rate | numeric(10, 2) |  |

3. viewings (vehicle viewing & bounce rate of customers ) - Event per theme\
   | Attribute | Domain | Key |\
    | viewing_id | integer | PK |\
   | renter_id | integer | FK |\
   | property_id | integer | FK |\
   | viewed_at | timestamp without zone |   |\
   | duration_min | integer |  required per docs |

4. amenities (features in vehicles) - Catalog per theme\
   | Attribute | Domain | Key |\
   
