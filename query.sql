SELECT 
    match_id,
    fixture,
    base_ticket_price
FROM Matches
WHERE tournament_category = 'Champions League'
AND match_status = 'Available';

---    query 2

SELECT user_id, full_name, email
FROM Users
WHERE full_name LIKE 'Tanvir%'
   OR full_name ILIKE '%haque%';


-- query 3-----------
SELECT 
    booking_id, 
    user_id, 
    match_id, 
    COALESCE(payment_status, 'Action Required') AS systematic_status
FROM Bookings
WHERE payment_status IS NULL;


