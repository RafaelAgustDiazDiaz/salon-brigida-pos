# Salón Brígida POS - PWA v10.4

Carpeta instalable de la app.

## Probar localmente

1. Abre esta carpeta en una terminal.
2. Ejecuta: python -m http.server 4173
3. Abre: http://localhost:4173
4. Usa el botón Instalar app o el menú del navegador.

## Datos

La PWA guarda los datos en el navegador bajo el origen donde se abre. Si venías usando el HTML directo, exporta los datos allí e impórtalos en esta versión.

## Archivos principales

- index.html: app completa.
- manifest.webmanifest: datos de instalación.
- sw.js: modo sin conexión.
- icons/: iconos e imágenes de instalación.


## Supabase

La app incluye una primera integración de nube. En Supabase, ejecuta `supabase/schema.sql`, luego abre `Nube` dentro de la app y pega el Project URL y la anon public key.



## Pagos parciales

Si una clienta no paga el total, escribe el monto recibido en efectivo antes de cobrar. La venta quedará con saldo pendiente y en Historial aparecerá el botón `Abonar` para registrar pagos posteriores.


## Pagos mixtos

En el cobro, selecciona `Mixto` para dividir una factura entre efectivo, tarjeta y transferencia. Si la suma no completa el total, queda saldo pendiente y luego se puede registrar desde Historial con `Abonar`.


## GitHub Pages

El paquete está preparado para publicarse en GitHub Pages. Revisa `GITHUB_PAGES.md` para los pasos.


## Seguridad y autosync

Revisa `AUTH_SECURITY.md`. La app incluye login de Supabase y sincronización automática por defecto.
