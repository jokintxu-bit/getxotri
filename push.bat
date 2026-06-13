@echo off
:: Asegurar que el script se ejecuta en la carpeta donde está guardado
cd /d "%~dp0"

echo Verificando instalacion de Git...
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Git no esta instalado o no se encuentra en las variables de entorno (PATH).
    pause
    exit /b
)

echo [1/3] Preparando archivos...
git add .
echo [2/3] Creando commit...
git commit -m "Deploy v1.2.2: Actualización de versión y ajustes de consistencia"
echo [3/3] Subiendo a GitHub/Hostalia...
git push origin main

echo.
echo === Proceso completado con exito ===
pause
