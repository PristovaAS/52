CREATE OR REPLACE FUNCTION public."public.calculate_scholarship"()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
declare ship INTEGER; total_score INTEGER;
	begin
		for total_score in (select students.total_score from students
		where students.id=old.student_id)
		loop
		if total_score >= 90 then ship = 1000;
		elsif total_score >= 80 and total_score < 90 then ship = 500;
		else ship =0;
		end if;
	end loop;
		update students
		set scholarship = ship
		where id=old.student_id;
		return new;
	END;
$function$
;
