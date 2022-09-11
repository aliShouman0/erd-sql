select name , earnings_rank from movie m ,oscar o 
	where o.movie_id=m.id and m.earnings_rank=(select min(earnings_rank) from movie )

 



