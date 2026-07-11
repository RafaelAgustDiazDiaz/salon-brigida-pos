# Salon Brigida POS - PWA v10.21

App instalable de punto de venta para Salon Brigida.

## Probar localmente

1. Abre esta carpeta en una terminal.
2. Ejecuta: `python -m http.server 4173`
3. Abre: `http://localhost:4173`
4. Usa el boton `Instalar app` o el menu del navegador.

## Archivos principales

- `index.html`: app completa.
- `manifest.webmanifest`: datos de instalacion.
- `sw.js`: modo sin conexion y cache.
- `icons/`: iconos e imagenes de instalacion.
- `supabase/schema.sql`: tablas para la base de datos.

## Datos y nube

La app guarda datos localmente en el navegador y tambien puede sincronizar con Supabase.

Para activar Supabase:

1. En Supabase abre `SQL Editor`.
2. Pega el contenido de `supabase/schema.sql`.
3. Pulsa `Run`.
4. En la app abre `Nube`.
5. Pega `Project URL` y `anon public key`.
6. Inicia sesion con el usuario creado en Supabase.
7. Pulsa `Subir ahora`.

## Tablas de Supabase

El SQL crea tablas para clientes, productos, servicios, ventas, pagos, abonos, turnos, caja y cuentas por cobrar.

La vista `pos_accounts_receivable` permite consultar clientes con saldo pendiente.

## GitHub Pages

El paquete esta preparado para publicarse en GitHub Pages. Revisa `GITHUB_PAGES.md` para los pasos.
