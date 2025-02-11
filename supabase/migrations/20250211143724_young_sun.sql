/*
  # Add sample restaurants and tables

  1. Data Population
    - Add 6 realistic restaurants with details
    - Add tables for each restaurant with varying capacities
  
  2. Content
    - Restaurant details include name, description, address, and operating hours
    - Tables with different capacities (2-8 seats)
*/

-- Insert sample restaurants
INSERT INTO restaurants (name, description, address, image_url, opening_time, closing_time)
VALUES
  (
    'La Piazza',
    'Authentic Italian cuisine in an elegant setting. Our handmade pasta and wood-fired pizzas transport you straight to Italy.',
    '123 Main Street, Downtown',
    'https://images.unsplash.com/photo-1552566626-52f8b828add9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80',
    '11:00',
    '23:00'
  ),
  (
    'Sakura Sushi',
    'Premium Japanese dining experience featuring the freshest sushi and sashimi. Our master chefs create edible art.',
    '456 Cherry Blossom Ave',
    'https://images.unsplash.com/photo-1579871494447-9811cf80d66c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80',
    '12:00',
    '22:30'
  ),
  (
    'The Grill House',
    'Specializing in prime cuts and perfectly grilled steaks. Our dry-aged beef and extensive wine list create the perfect steakhouse experience.',
    '789 Oak Road',
    'https://images.unsplash.com/photo-1514362545857-3bc16c4c7d1b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80',
    '16:00',
    '23:00'
  ),
  (
    'Coastal Kitchen',
    'Fresh seafood and ocean views. Our daily catch and seasonal menu showcase the best of coastal cuisine.',
    '321 Beach Boulevard',
    'https://images.unsplash.com/photo-1551632436-cbf8dd35adfa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80',
    '11:30',
    '22:00'
  ),
  (
    'Spice Route',
    'A journey through Indian cuisine. Our aromatic dishes and fresh-baked naan bring the authentic flavors of India to your table.',
    '567 Spice Market Lane',
    'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80',
    '12:00',
    '23:00'
  ),
  (
    'Le Petit Bistro',
    'Classic French cuisine in a cozy atmosphere. Experience Paris through our carefully crafted dishes and extensive wine selection.',
    '890 Rue de Paris',
    'https://images.unsplash.com/photo-1550966871-3ed3cdb5ed0c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80',
    '11:00',
    '22:30'
  );

-- Add tables for each restaurant
DO $$
DECLARE
  restaurant_rec RECORD;
BEGIN
  FOR restaurant_rec IN SELECT id FROM restaurants LOOP
    -- Small tables (2 seats)
    INSERT INTO tables (restaurant_id, name, capacity)
    VALUES
      (restaurant_rec.id, 'Table 1', 2),
      (restaurant_rec.id, 'Table 2', 2),
      (restaurant_rec.id, 'Table 3', 2);
    
    -- Medium tables (4 seats)
    INSERT INTO tables (restaurant_id, name, capacity)
    VALUES
      (restaurant_rec.id, 'Table 4', 4),
      (restaurant_rec.id, 'Table 5', 4),
      (restaurant_rec.id, 'Table 6', 4);
    
    -- Large tables (6-8 seats)
    INSERT INTO tables (restaurant_id, name, capacity)
    VALUES
      (restaurant_rec.id, 'Table 7', 6),
      (restaurant_rec.id, 'Table 8', 6),
      (restaurant_rec.id, 'Table 9', 8);
  END LOOP;
END $$;