#!/bin/zsh

# 1. Elegir un apunte al azar del archivo en el Escritorio
APUNTE=$(shuf -n 1 ~/Escritorio/mis_apuntes.txt)

# 2. Separar la pregunta de la respuesta
PREGUNTA=$(echo "$APUNTE" | cut -d'|' -f1)
RESPUESTA=$(echo "$APUNTE" | cut -d'|' -f2)

# 3. Lanzar la pregunta (en segundo plano para que no trabe)
paplay /usr/share/sounds/freedesktop/stereo/message.oga 2>/dev/null &
notify-send -u critical -i dialog-question "🧠 REPASO: Pregunta" "$PREGUNTA"

# 4. Esperar 7 segundos
sleep 4

# 5. Lanzar la respuesta (en segundo plano para que no trabe)
paplay /usr/share/sounds/freedesktop/stereo/complete.oga 2>/dev/null &
notify-send -u critical -i dialog-question "✅ REPASO: Respuesta" "$RESPUESTA"
