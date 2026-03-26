#!/bin/bash
echo "Content-type: text/html; charset=utf-8"
echo ""

echo "<html><head><link rel='stylesheet' href='/css/style.css'></head><body>"
echo "<h1>История</h1>"
echo "<table border='1'>"
echo "<tr><th>Дата</th><th>Автор</th><th>Текст</th></tr>"

while IFS=' | ' read -r dt name msg; do
    echo "<tr><td>$dt</td><td>$name</td><td>$msg</td></tr>"
done < /var/www/boardy/data/messages.txt

echo "</table>"
echo "<br><a href='/feedback.html'>Назад</a>"
echo "</body></html>"
