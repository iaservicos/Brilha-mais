@echo off
echo ========================================================
echo   INICIANDO AMBIENTE DE DESENVOLVIMENTO (DOCKER)
echo ========================================================
echo.
echo Construindo as imagens e subindo os conteineres...
echo O Backend usara o banco de producao (Supabase).
echo.
docker-compose -f docker-compose.dev.yml up --build

echo.
pause
