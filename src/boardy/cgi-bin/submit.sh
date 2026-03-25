#!/bin/bash
echo "Content-type: text/html; charset=utf-8"
echo ""

read -n $CONTENT_LENGTH POST_DATA

NAME=$(echo "$POST_DATA" | cut -d'&' -f1 | cut -d'=' -f2 | sed 's/+/ /g;s/%\([0-9A-F][0-9A-F]\)/\\x\1/g;e printf "%.s"')
MESSAGE=$(echo "$POST_DATA" | cut -d'&' -f2 | cut -d'=' -f2 | sed 's/+/ /g;s/%\([0-9A-F][0-9A-F]\)/\\x\1/g;e printf "%.s"')

echo "$(date '+%Y-%m-%d %H:%M:%S') | $NAME | $MESSAGE" >> /var/www/boardy/data/messages.txt
echo "<html><head>"
echo "<meta charset='UTF-8'>"
echo "<link rel='stylesheet' href='/css/style.css'>"
echo "</head><body>"
echo "<h1>Спс, $NAME!</h1>"
echo "<p>Сообщение сохранено.</p>"
echo "</body></html>"
