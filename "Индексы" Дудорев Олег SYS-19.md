Задание 1
Напишите запрос к учебной базе данных, который вернёт процентное отношение общего размера всех индексов к общему размеру всех таблиц.

![image](https://github.com/dudorevov/nonamerepository/assets/137158557/7832acef-1d79-4661-9f99-73da79bb4c13)

Задание 2
Выполните explain analyze следующего запроса:

select distinct concat(c.last_name, ' ', c.first_name), sum(p.amount) over (partition by c.customer_id, f.title)
from payment p, rental r, customer c, inventory i, film f
where date(p.payment_date) = '2005-07-30' and p.payment_date = r.rental_date and r.customer_id = c.customer_id and i.inventory_id = r.inventory_id;

![image](https://github.com/dudorevov/nonamerepository/assets/137158557/6960e477-f08f-4035-9bc5-9f05b21794a5)

![image](https://github.com/dudorevov/nonamerepository/assets/137158557/128576da-c383-49dd-aa2d-04397b2ace78)

перечислите узкие места;
inventory, film, rental
исходя из условий задачи необходим построить список клиентов и внесенные ими платежи на кокретную дату, нужная информация содержиться в payment и customer, 
поэтому нет необходимости использовать лишнее, следовательно оптимизация запроса заключается в сокращении перечня таблиц,  из которых запрашиваем данные.

до оптимизации

![image](https://github.com/dudorevov/nonamerepository/assets/137158557/a11d59ba-bce8-4cbc-ba14-c00381d7d764)

после оптимизации
![image](https://github.com/dudorevov/nonamerepository/assets/137158557/d86874d9-845b-404e-a0cb-a52354afa56a)
