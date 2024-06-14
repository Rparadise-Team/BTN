# Directorio actual del script
$directorio = Split-Path -Parent $MyInvocation.MyCommand.Path

# Línea que quieres sustituir
$linea_a_sustituir = 'input_player1_analog_dpad_mode = "0"'

# Nueva línea por la que quieres sustituir
$nueva_linea = 'input_player1_analog_dpad_mode = "1"'

# Recorre cada archivo .rmp en el directorio actual
Get-ChildItem -Path $directorio -Filter *.rmp | ForEach-Object {
    # Lee el contenido del archivo
    $contenido = Get-Content $_.FullName

    # Busca y reemplaza la línea especificada
    $contenido = $contenido -replace $linea_a_sustituir, $nueva_linea

    # Escribe el contenido modificado de vuelta al archivo
    Set-Content $_.FullName -Value $contenido
}

Write-Output "Se ha realizado la sustitución en los archivos .rmp en la carpeta."