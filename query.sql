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


 -- query 4-------------
SELECT 
    b.booking_id,
    u.full_name,
    m.fixture,
    b.total_cost
FROM Bookings b
INNER JOIN Users u ON b.user_id = u.user_id
INNER JOIN Matches m ON b.match_id = m.match_id;



