# SISTEMA DE NOTIFICACIONES DE ESTUDIO PARA LINUX
## Mediante un archivo de extensión `sh`, se ejecutaran un conjunto de terminos a recordar cada detrminado tiempo configurado mediante el siguiente comando siempre y cuando el archivo de apuntes y el script se encuentren en la misma carpeta:
`while true; do ./repaso_notif.sh; sleep 180; done &` 
## Donde `sleep` muestra el intervalo de tiempo en el que debe aparecer la notificacion de PREGUNTA-RESPUESTA, siendo el comando para terminar dichas notificaciones de estudio el siguiente:
 `fg` 
