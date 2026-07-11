-- Salon Brigida POS - Seguridad con Supabase Auth
-- Ejecuta esto despues de crear al menos un usuario en Authentication > Users.
-- Si ya ejecutaste supabase/schema.sql completo, este archivo es opcional.

alter table public.pos_snapshots enable row level security;
alter table public.pos_clients enable row level security;
alter table public.pos_products enable row level security;
alter table public.pos_services enable row level security;
alter table public.pos_sales enable row level security;
alter table public.pos_sale_items enable row level security;
alter table public.pos_sale_payments enable row level security;
alter table public.pos_turns enable row level security;
alter table public.pos_caja_current enable row level security;
alter table public.pos_caja_history enable row level security;

drop policy if exists "Salon Brigida public read snapshot" on public.pos_snapshots;
drop policy if exists "Salon Brigida public write snapshot" on public.pos_snapshots;
drop policy if exists "Salon Brigida public update snapshot" on public.pos_snapshots;
drop policy if exists "Salon Brigida authenticated read snapshot" on public.pos_snapshots;
drop policy if exists "Salon Brigida authenticated insert snapshot" on public.pos_snapshots;
drop policy if exists "Salon Brigida authenticated update snapshot" on public.pos_snapshots;

drop policy if exists "Salon Brigida authenticated all snapshots" on public.pos_snapshots;
drop policy if exists "Salon Brigida authenticated all clients" on public.pos_clients;
drop policy if exists "Salon Brigida authenticated all products" on public.pos_products;
drop policy if exists "Salon Brigida authenticated all services" on public.pos_services;
drop policy if exists "Salon Brigida authenticated all sales" on public.pos_sales;
drop policy if exists "Salon Brigida authenticated all sale items" on public.pos_sale_items;
drop policy if exists "Salon Brigida authenticated all sale payments" on public.pos_sale_payments;
drop policy if exists "Salon Brigida authenticated all turns" on public.pos_turns;
drop policy if exists "Salon Brigida authenticated all caja current" on public.pos_caja_current;
drop policy if exists "Salon Brigida authenticated all caja history" on public.pos_caja_history;

create policy "Salon Brigida authenticated all snapshots"
  on public.pos_snapshots for all to authenticated
  using (true) with check (true);

create policy "Salon Brigida authenticated all clients"
  on public.pos_clients for all to authenticated
  using (true) with check (true);

create policy "Salon Brigida authenticated all products"
  on public.pos_products for all to authenticated
  using (true) with check (true);

create policy "Salon Brigida authenticated all services"
  on public.pos_services for all to authenticated
  using (true) with check (true);

create policy "Salon Brigida authenticated all sales"
  on public.pos_sales for all to authenticated
  using (true) with check (true);

create policy "Salon Brigida authenticated all sale items"
  on public.pos_sale_items for all to authenticated
  using (true) with check (true);

create policy "Salon Brigida authenticated all sale payments"
  on public.pos_sale_payments for all to authenticated
  using (true) with check (true);

create policy "Salon Brigida authenticated all turns"
  on public.pos_turns for all to authenticated
  using (true) with check (true);

create policy "Salon Brigida authenticated all caja current"
  on public.pos_caja_current for all to authenticated
  using (true) with check (true);

create policy "Salon Brigida authenticated all caja history"
  on public.pos_caja_history for all to authenticated
  using (true) with check (true);

grant select, insert, update, delete on table public.pos_snapshots to authenticated;
grant select, insert, update, delete on table public.pos_clients to authenticated;
grant select, insert, update, delete on table public.pos_products to authenticated;
grant select, insert, update, delete on table public.pos_services to authenticated;
grant select, insert, update, delete on table public.pos_sales to authenticated;
grant select, insert, update, delete on table public.pos_sale_items to authenticated;
grant select, insert, update, delete on table public.pos_sale_payments to authenticated;
grant select, insert, update, delete on table public.pos_turns to authenticated;
grant select, insert, update, delete on table public.pos_caja_current to authenticated;
grant select, insert, update, delete on table public.pos_caja_history to authenticated;
grant select on table public.pos_accounts_receivable to authenticated;
grant usage, select on all sequences in schema public to authenticated;
