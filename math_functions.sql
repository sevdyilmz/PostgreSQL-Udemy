SELECT ROUND(14.45),   //14
	   ROUND(14.45,1),  //14.5
       CEIL(14.45),  //15
       FLOOR(14.45), //14
       ABS(-5.78),  //5.78
       POWER(4,3),  //64
       SIGN(-5),  //-1
       TRUNC(4836.98);   //4836


//math functions

SELECT payment_id, amount,
	   (amount*0.45) as percent_amount,
	   ROUND(amount*0.45) as f_round,
       CEIL(amount*0.45) as f_ceil,
       FLOOR(amount*0.45) as f_floor, 
       ABS(amount*0.45) as f_abs,
       SIGN(amount*0.45) as f_sign,
	   MOD(amount, 3) as f_mod,
       TRUNC(amount*0.45) as f_trunc
FROM payment
LIMIT 10;

//random

SELECT random();
SELECT random()*100+1 as ran_num;
SELECT floor(random()*100+1):: int as ran_num;
SELECT floor(random() * (high-low+1) + low)::int as ran_num;
SELECT floor(random()*(200-100+1)+ 100):: int as ran_num
FROM generate_series(1,5);
