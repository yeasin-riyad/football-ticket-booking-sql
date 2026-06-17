-- Query 1
select
    match_id,
    fixture,
    base_ticket_price
from matches
where tournament_category = 'Champions League'
    and match_status = 'Available';


-- Query 2
select
    user_id,
    full_name,
    email
from users
where full_name ilike 'tanvir%'
    or full_name ilike '%haque%';



-- Query 3
select
    booking_id,
    user_id,
    match_id,
    coalesce(payment_status, 'Action Required')
        as systematic_status
from bookings
where payment_status is null;



-- Query 4
select
    b.booking_id,
    u.full_name,
    m.fixture,
    b.total_cost
from bookings b
inner join users u
    on b.user_id = u.user_id
inner join matches m
    on b.match_id = m.match_id;