# Seguridad y autosync

## 1. Crear usuario
En Supabase ve a Authentication > Users > Add user. Crea el correo y contraseña que usará el salón.

## 2. Activar políticas seguras
En SQL Editor ejecuta `supabase/security_auth.sql`. Esto quita acceso público anónimo y exige login.

## 3. En la app
Abre `Nube`, guarda la conexión, pulsa `Login`, entra con el usuario creado y deja activado `Sincronizar automáticamente al guardar`.

## Nota
Esta fase sigue usando una copia completa en `pos_snapshots`. La siguiente fase es normalizar a tablas separadas: clientes, productos, servicios, ventas, pagos, caja y turnos.
