-- Salón Brígida POS - Supabase v1
-- Pega este archivo en Supabase > SQL Editor > Run.

create table if not exists public.pos_snapshots (
  id text primary key default 'main',
  payload jsonb not null,
  updated_at timestamptz not null default now()
);

alter table public.pos_snapshots enable row level security;

-- Modo inicial/piloto: permite a la app leer y escribir usando la anon public key.
-- Para producción, cambiaremos esto a usuarios con login y permisos por rol.
drop policy if exists "Salon Brigida public read snapshot" on public.pos_snapshots;
create policy "Salon Brigida public read snapshot"
  on public.pos_snapshots for select
  to anon
  using (true);

drop policy if exists "Salon Brigida public write snapshot" on public.pos_snapshots;
create policy "Salon Brigida public write snapshot"
  on public.pos_snapshots for insert
  to anon
  with check (true);

drop policy if exists "Salon Brigida public update snapshot" on public.pos_snapshots;
create policy "Salon Brigida public update snapshot"
  on public.pos_snapshots for update
  to anon
  using (true)
  with check (true);

insert into public.pos_snapshots (id, payload)
values ('main', '{"version":"10.4","db":{"clients":[],"products":[],"services":[],"sales":[]}}'::jsonb)
on conflict (id) do nothing;
