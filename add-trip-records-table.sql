-- Trip Records table: admin manually adds record of who went on which tour
create table trip_records (
  id uuid primary key default gen_random_uuid(),
  tour_name text,
  tour_date date,
  members_count int,
  description text,
  image_url text,
  created_at timestamptz default now()
);

alter table trip_records enable row level security;

-- Sab dekh sakte hain (agar chahen to public page pe bhi dikha sakein), sirf admin likh sakta hai
create policy "public read trip_records" on trip_records for select to anon using (true);
create policy "auth write trip_records" on trip_records for all to authenticated using (true) with check (true);
