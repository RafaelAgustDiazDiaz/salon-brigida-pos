# Conectar Salon Brigida con Supabase

## Paso 1: crear tablas

1. Entra a tu proyecto de Supabase.
2. Abre `SQL Editor`.
3. Crea un `New query`.
4. Pega todo el contenido de `supabase/schema.sql`.
5. Pulsa `Run`.

Eso crea estas tablas:

- `pos_snapshots`: respaldo completo de la app.
- `pos_clients`: clientes.
- `pos_products`: productos.
- `pos_services`: servicios.
- `pos_sales`: ventas.
- `pos_sale_items`: detalle de cada venta.
- `pos_sale_payments`: pagos y abonos.
- `pos_turns`: turnos.
- `pos_caja_current`: caja abierta.
- `pos_caja_history`: cierres de caja.
- `pos_accounts_receivable`: vista de cuentas por cobrar.

## Paso 2: usuario de acceso

1. Ve a `Authentication > Users`.
2. Crea un usuario con correo y contrasena.
3. Ese usuario sera el que usaras dentro de la app en `Nube`.

## Paso 3: conectar la app

1. En Supabase, ve a `Project Settings > API`.
2. Copia `Project URL`.
3. Copia `anon public key`.
4. En la app, pulsa `Nube`.
5. Pega `Project URL` y `anon public key`.
6. Guarda.
7. Pulsa `Iniciar sesion` y entra con el usuario creado.
8. Pulsa `Subir ahora`.

Cuando termine bien, la app mostrara:

`Nube y tablas actualizadas`

## Como verificar

En Supabase abre `Table Editor` y revisa:

- Si tienes clientes: `pos_clients`.
- Si tienes ventas: `pos_sales`.
- Si tienes pagos o abonos: `pos_sale_payments`.
- Si tienes deudas: `pos_accounts_receivable`.

La app sigue guardando el respaldo completo en `pos_snapshots`, pero ahora tambien alimenta tablas reales para reportes y consultas.
