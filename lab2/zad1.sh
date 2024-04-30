#!/bin/bash

# sprawdzenie imienia
if [ -z "$1" ]; then
    read -p "Podaj imię: " imie
else
    imie=$1
fi

# sprawdzenie nazwiska
if [ -z "$2" ]; then
    read -p "Podaj nazwisko: " nazwisko
else
    nazwisko=$2
fi

# sprawdzenie roku urodzenia
if [ -z "$3" ]; then
    read -p "Podaj rok urodzenia: " rok_urodzenia
else
    rok_urodzenia=$3
fi

# sprawdzenie nazwy pliku
if [ -z "$4" ]; then
    read -p "Podaj nazwę pliku: " plik
else
    plik=$4
fi

# obliczenie wieku
aktualny_rok=$(date +%Y)
wiek=$(( $aktualny_rok - $rok_urodzenia ))

# komunikat
echo "Witaj, $imie $nazwisko! Masz $wiek lat."

# silnia liczona z wieku
silnia_rek_wiek=$(silnia_rek $wiek)
silnia_iter_wiek=$(silnia_iter $wiek)

# zapis informacji do pliku
echo "$imie, $nazwisko, $rok_urodzenia, $wiek, $silnia_rek_wiek, $silnia_iter_wiek" >> $plik

echo "Informacje zostały zapisane do pliku $plik."
