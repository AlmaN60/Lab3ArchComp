@echo off

:: Шлях до вихідного каталогу (оригінального)
set "source_dir=C:\Users\Dima\Desktop\Katalog iz cotorogo bydet copy"

:: Шлях до цільового каталогу (неоригінального)
set "destination_dir=C:\Users\Dima\Desktop\Katalog kyda bydet copy"

:: Перевірка наявності вихідного 
if not exist "%source_dir%" (
    echo Вихідний каталог не знайдено.
    pause
    exit /b
)

:: створення цільового каталогу
if not exist "%destination_dir%" (
    mkdir "%destination_dir%"
)

:: Копіювання файлів
echo Копіювання файлів з %source_dir% в %destination_dir%...
xcopy /s /y /k /h /a "%source_dir%\*" "%destination_dir%\"
echo Копіювання завершено.
pause
