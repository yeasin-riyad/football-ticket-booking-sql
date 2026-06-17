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