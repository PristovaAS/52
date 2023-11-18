CREATE OR REPLACE FUNCTION public.update_total_score()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
declare total INTEGER; s INTEGER;
	begin
		total = 0;
		for s in (select score from activity_scores
		where student_id=old.student_id)
		loop
			total=total+s;
		end loop;
		update students
		set total_score = total
		where id=old.student_id;
		return old;
	END;
$function$
;
