#!/bin/bash

# sprawdzenie pliku
if [ -z "$1" ]; then
    read -p "Podaj nazwę pliku: " filename
else
    filename="$1"
fi

# sprawdzenie czy istnieje(plik)
if [ ! -f "$filename" ]; then
    echo "Błąd: Plik $filename nie istnieje."
    exit 1
fi

# sprawdzenie czy ścieżka do skryptu jest w zmiennej PATH
if [[ ":$PATH:" != *":$(pwd):"* ]]; then
    export PATH="$PATH:$(pwd)"
    echo "Ścieżka do skryptu została dodana do zmiennej PATH."
fi

# tworzenie nowego katalogu i przeniesienie pliku do niego
new_dir="daneUsera"
mkdir -p "$new_dir" && mv "$filename" "$new_dir/$filename"

# wyświetlenie zawartości obecnego folderu i dopisanie do pliku daneUsera/daneUsera.txt
ls -l >> "$new_dir/$filename"
echo "Zawartość obecnego folderu została dopisana do pliku $new_dir/$filename."
