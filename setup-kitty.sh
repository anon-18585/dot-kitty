#!/usr/bin/env bash

set -euo pipefail

files=(
    kitty.conf
    themes/
    themes/monochrome.conf
)

read -r -p "Do you want to backup your actual kitty config ? [y/n] " backup

case "$backup" in
    [Yy]|[Yy])
    echo
    read -p "Where do you want to save the backup " path
    echo
    tar -cvf $path ~/.config/kitty
    ;;
    [Nn]|[Nn)]




    ;;

    #ask a question
    echo
    echo "The Following files will be synchronized to ~/.config/kitty/."
    printf ' - %s\n' "${files[@]}"
    echo

    read -r -p "Continue with the setup ? [y/n] " answer

    case "$answer" in
        [Yy]|[Yy][Ee][Ss])
        ;;
        [Nn]|[Nn][Oo])
            echo
            echo "Synchronization cancelled."
            exit 0
            ;;
    *)
        echo {Invalid answer.}
        exit 1
        ;;
    esac

    rsync -arvhP --delete  ~/dot-kitty/kitty/ ~/.config/kitty/

    echo
    rm -rf ~/dot-kitty
    echo

    echo "Setup Finished."
    echo
