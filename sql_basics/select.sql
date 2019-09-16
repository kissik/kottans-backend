select p.first_name, p.last_name, COUNT(distinct o.id), SUM(io.quantity), SUM(io.quantity*i.price) - SUM(io.discount)
from person p left join `order` o on p.id = o.person_id
left join order_item io on o.id = io.order_id
left join item i on io.item_id = i.id
group by p.first_name, p.last_name
order by p.last_name DESC;