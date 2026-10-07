-- Dán toàn bộ nội dung này vào Supabase > SQL Editor > New query > Run
create table if not exists public.somo_maps (
  owner      uuid    not null default auth.uid(),
  id         text    not null,
  name       text    not null default '',
  data       text    not null default '',
  deleted    boolean not null default false,
  updated_at bigint  not null default 0,
  primary key (owner, id)
);

alter table public.somo_maps enable row level security;

create policy "doc cua minh"   on public.somo_maps for select using (owner = auth.uid());
create policy "them cua minh"  on public.somo_maps for insert with check (owner = auth.uid());
create policy "sua cua minh"   on public.somo_maps for update using (owner = auth.uid()) with check (owner = auth.uid());
create policy "xoa cua minh"   on public.somo_maps for delete using (owner = auth.uid());
