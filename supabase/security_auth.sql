-- Salón Brígida POS - Seguridad con Supabase Auth
-- Ejecuta esto DESPUES de crear al menos un usuario en Authentication > Users.

alter table public.pos_snapshots enable row level security;

drop policy if exists "Salon Brigida public read snapshot" on public.pos_snapshots;
drop policy if exists "Salon Brigida public write snapshot" on public.pos_snapshots;
drop policy if exists "Salon Brigida public update snapshot" on public.pos_snapshots;
drop policy if exists "Salon Brigida authenticated read snapshot" on public.pos_snapshots;
drop policy if exists "Salon Brigida authenticated insert snapshot" on public.pos_snapshots;
drop policy if exists "Salon Brigida authenticated update snapshot" on public.pos_snapshots;

create policy "Salon Brigida authenticated read snapshot"
  on public.pos_snapshots for select
  to authenticated
  using (true);

create policy "Salon Brigida authenticated insert snapshot"
  on public.pos_snapshots for insert
  to authenticated
  with check (true);

create policy "Salon Brigida authenticated update snapshot"
  on public.pos_snapshots for update
  to authenticated
  using (true)
  with check (true);
