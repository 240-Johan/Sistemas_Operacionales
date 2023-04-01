vec1=$(cat resultados/archivo1.txt)
vec2=$(cat resultados/archivo2.txt)

array1=($vec1)
array2=($vec2)

suma=0
for ((i=0;i<5;i++))
do
  suma=$((suma+array1[i]+array2[i]))
done

echo "La suma es: $suma" > resultados/suma.txt

echo "Archivo creado con éxito:"
cat resultados/suma.txt
