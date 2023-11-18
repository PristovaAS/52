create trigger mytrigger after
update
    on
    public.activity_scores for each row execute function update_total_score()