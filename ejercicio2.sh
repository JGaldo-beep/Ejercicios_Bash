#!/bin/bash
#Bienvenida
echo "Operaciones Matemáticas"
echo "Elije una opcion:"

#Creamos una funcion para modularizar el problema
function opMatematicas()
{
  if [[ $3 = "/" ]]; then
    read -p "Ingrese el primer numero: " num1
    read -p "Ingrese el segundo numero: " num2
    result=$(echo "scale=2; $num1/$num2" | bc)
    echo "La $1 de $num1 $2 $num2 es: $result"
  else
    read -p "Ingrese el primer numero: " num1
    read -p "Ingrese el segundo numero: " num2
    echo "La $1 de $num1 $2 $num2 es: $((num1 $3 num2))"
  fi
}

#Se despliega el menu de opciones
PS3='Operacion que desea realizar: '
menu=("Suma" "Resta" "Multiplicación" "División" "Salir")
select opt in "${menu[@]}"
do
  case $opt in
    Suma)
      opMatematicas suma mas +
      ;;
    Resta)
      opMatematicas resta menos -
      ;;
    Multiplicación)
      opMatematicas multiplicacion por "*"
      ;;
    División)
      opMatematicas division entre "/"
      ;;
    Salir)
      echo "Bye bye! Come back soon!"
      exit 1
      ;;
    *)
     echo "Error... Ingrese un numero valido entre 1-5"
      ;;
  esac
done
