#!/bin/bash

# sprawdzenie argumentow
if [ $# -ne 2 ]; then
    echo "Błąd: Należy podać dokładnie dwa argumenty: numer dnia i miesiąc."
    echo "Poprawne użycie: $0 numerDnia miesiąc"
    exit 1
fi

# sprawdzenie dnia
if ! [[ "$1" =~ ^[1-9]$|^1[0-9]$|^2[0-9]$|^3[01]$ ]]; then
    echo "Błąd: Numer dnia powinien być liczbą z zakresu 1-31."
    exit 1
fi

# sprawdzenie miesiaca
if ! [[ "$2" =~ ^[1-9]$|^1[0-2]$ ]]; then
    echo "Błąd: Miesiąc powinien być liczbą z zakresu 1-12."
    exit 1
fi

# sprawdzenie poprawności podanych danych i wyznaczenie dnia tygodnia
date_command=$(date -d "2024-$2-$1" +"%A" 2>/dev/null)

if [ $? -eq 0 ]; then
    echo "Dzień tygodnia dla $1 $2 2024: $date_command"
    echo "Dzień tygodnia dla $1 $2 2024: $date_command" >> plik1.txt
else
    echo "Błąd: Nie można wyznaczyć dnia tygodnia dla podanej daty." >> plik2.txt
    exit 1
fi
