create trigger update_scholarship_trigger after
update
    on
    public.activity_scores for each row execute function calculate_scholarship()