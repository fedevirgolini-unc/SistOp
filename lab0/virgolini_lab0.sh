#1)
grep "model name" /proc/cpuinfo
#2)
grep "model name" /proc/cpuinfo | wc -l
#3)
wget -nv -O Federico_in_wonderland.txt https://www.gutenberg.org/files/11/11-0.txt && sed -i "s/Alice/Federico/g" Federico_in_wonderland.txt
#4)
sort -nr -k5 ./datos/weather_cordoba.in | (head -n1 && tail -n1) | cut -d" " -f1,2,3 && echo "Dia de maxima y minima temperatura macima respectivamente"
#5)
sort -n -k3 ./datos/atpplayers.in > jugadores_ordenados.txt
#6)
awk '{print $0, $7-$8}' ./datos/superliga.in | sort -nr -k2,2 -k9,9 | cut -d" " -f1,2,3,4,5,6,7,8 > superliga_ordenado.txt
#7)
ip link | grep ether | awk '{printf("MAC ADDRESS: %s\n", $2)}'
#8.a)
mkdir serie_piola && touch ./serie_piola/serie_piola_S01E{01..10}_es.srt
#8.b)
for f in ./serie_piola/*; do mv "$f" "$(echo "$f" | sed 's/_es//g')"; done
