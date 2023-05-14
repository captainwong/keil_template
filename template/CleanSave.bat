copy .\obj\template.hex .
rd /s/q obj
for /f %%i in ('.\tools\dt.exe') do set name="template_%%i.zip"
zip -r %name% .\uvproj .\src .\tools .\CleanSave.bat .\template.hex
del .\template.hex
echo.
pause