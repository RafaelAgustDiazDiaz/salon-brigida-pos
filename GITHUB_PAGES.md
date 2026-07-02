# Publicar Salón Brígida en GitHub Pages

1. Crea un repositorio en GitHub, por ejemplo `salon-brigida-pos`.
2. Sube todos los archivos de esta carpeta al repositorio.
3. En GitHub entra a `Settings > Pages`.
4. En `Build and deployment`, selecciona `Deploy from a branch`.
5. Elige branch `main` y carpeta `/root`.
6. Guarda. GitHub te dará una URL HTTPS parecida a:
   `https://TU-USUARIO.github.io/salon-brigida-pos/`

Después abre la app, entra en `Nube`, pega la URL y anon public key de Supabase, y pulsa `Subir ahora`.

Notas:
- GitHub Pages solo publica la app. Los datos deben vivir en Supabase.
- Para hacer la PWA instalable, la URL HTTPS de GitHub Pages sí ayuda.
- Si usas dominio propio, configúralo en `Settings > Pages > Custom domain`.
