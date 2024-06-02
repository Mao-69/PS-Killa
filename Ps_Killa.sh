#!/bin/bash

display_ascii_art() {
    echo "$(tput setaf 2)────────────────────────────────────────────────────────────────────────────────────────────$(tput sgr 0)";
    echo " ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄       ▄    ▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄            ▄            ▄▄▄▄▄▄▄▄▄▄▄ ";
    echo "▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌     ▐░▌  ▐░▌▐░░░░░░░░░░░▌▐░▌          ▐░▌          ▐░░░░░░░░░░░▌";
    echo "▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀      ▐░▌ ▐░▌  ▀▀▀▀█░█▀▀▀▀ ▐░▌          ▐░▌          ▐░█▀▀▀▀▀▀▀█░▌";
    echo "▐░▌       ▐░▌▐░▌               ▐░▌▐░▌       ▐░▌     ▐░▌          ▐░▌          ▐░▌       ▐░▌";
    echo "▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄      ▐░▌░▌        ▐░▌     ▐░▌          ▐░▌          ▐░█▄▄▄▄▄▄▄█░▌";
    echo "▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌     ▐░░▌         ▐░▌     ▐░▌          ▐░▌          ▐░░░░░░░░░░░▌";
    echo "▐░█▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀█░▌     ▐░▌░▌        ▐░▌     ▐░▌          ▐░▌          ▐░█▀▀▀▀▀▀▀█░▌";
    echo "▐░▌                    ▐░▌     ▐░▌▐░▌       ▐░▌     ▐░▌          ▐░▌          ▐░▌       ▐░▌";
    echo "▐░▌           ▄▄▄▄▄▄▄▄▄█░▌     ▐░▌ ▐░▌  ▄▄▄▄█░█▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄ ▐░▌       ▐░▌";
    echo "▐░▌          ▐░░░░░░░░░░░▌     ▐░▌  ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌       ▐░▌";
    echo " ▀            ▀▀▀▀▀▀▀▀▀▀▀       ▀    ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀ ";
    echo "                                                                                           ";
    echo "$(tput setaf 2)────────────────────────────────────────────────────────────────────────────────────────────$(tput sgr 0)";
}

display_menu() {
    local selected_option=$1
    echo " "
    echo "$(tput setaf 2)┌─($(tput sgr 0)$(tput setaf 6)PS KILLA$(tput sgr 0)$(tput setaf 2))─[$(tput sgr 0)$(tput setaf 6)( -_•)▄︻デ══━一$(tput sgr 0)$(tput setaf 2)]$(tput sgr 0)"
    echo "│"
    if [ "$selected_option" -eq 1 ]; then
        echo "$(tput setaf 3)│ 1. List all processes$(tput sgr 0)"
    else
        echo "$(tput setaf 1)│ 1. $(tput setaf 6)List all processes$(tput sgr 0)"
    fi

    if [ "$selected_option" -eq 2 ]; then
        echo "$(tput setaf 3)│ 2. List specific process$(tput sgr 0)"
    else
        echo "$(tput setaf 1)│ 2. $(tput setaf 6)List specific process$(tput sgr 0)"
    fi

    if [ "$selected_option" -eq 3 ]; then
        echo "$(tput setaf 3)│ 3. Kill process$(tput sgr 0)"
    else
        echo "$(tput setaf 1)│ 3. $(tput setaf 6)Kill process$(tput sgr 0)"
    fi

    if [ "$selected_option" -eq 4 ]; then
        echo "$(tput setaf 3)│ 4. Exit$(tput sgr 0)"
    else
        echo "$(tput setaf 1)│ 4. $(tput setaf 6)Exit$(tput sgr 0)"
    fi
    echo "│"
    echo "$(tput setaf 2)├──($(tput sgr 0)$(tput setaf 6)( -_•)$(tput sgr 0)$(tput setaf 2))-[$(tput sgr 0)Selected Option: $selected_option$(tput setaf 2)]$(tput sgr 0)"
}

list_all_processes() {
    clear
    display_menu 1
    echo "$(tput setaf 2)├──($(tput sgr 0)$(tput setaf 6)List all Processes$(tput sgr 0)$(tput setaf 2))$(tput sgr 0)"
    ps aux
    echo "$(tput setaf 2)└──($(tput sgr 0)$(tput setaf 6)End of List$(tput sgr 0)$(tput setaf 2))$(tput sgr 0)"
}

list_specific_process() {
    clear
    display_menu 2
    echo "$(tput setaf 2)├──($(tput sgr 0)$(tput setaf 6)List Specific Process$(tput sgr 0)$(tput setaf 2))$(tput sgr 0)"
    read -p "$(tput setaf 2)├──($(tput sgr 0)$(tput setaf 6)process name$(tput sgr 0)$(tput setaf 2))$(tput sgr 0) " process_name
    ps aux | grep -i "$process_name" | grep -v grep
    echo "$(tput setaf 2)└──($(tput sgr 0)$(tput setaf 6)End of List$(tput sgr 0)$(tput setaf 2))$(tput sgr 0)"
}

kill_process() {
    clear
    display_menu 3
    echo "$(tput setaf 2)├──($(tput sgr 0)$(tput setaf 6)Kill Process$(tput sgr 0)$(tput setaf 2))$(tput sgr 0)"
    read -p "$(tput setaf 2)├──($(tput sgr 0)$(tput setaf 6)Process Name to Kill:$(tput sgr 0)$(tput setaf 2))$(tput sgr 0) " process_name
    ps aux | grep -i "$process_name" | grep -v grep | awk '{print $2}' | xargs -r sudo kill -9
    echo "$(tput setaf 2)└──($(tput sgr 0)$(tput setaf 6)Process Killed$(tput sgr 0)$(tput setaf 2))$(tput sgr 0)"
}

while true; do
    clear
    display_ascii_art
    display_menu 0
    echo "$(tput setaf 2)├──($(tput sgr 0)$(tput setaf 6)$(whoami)$(tput sgr 0)@$(tput setaf 6)$(hostname)$(tput sgr 0)$(tput setaf 2))-[$(tput sgr 0)$(pwd)$(tput setaf 2)]$(tput sgr 0)"
    read -p "$(tput setaf 2)└──$(tput sgr 0)$(tput setaf 6)$ $(tput sgr 0) " option

    case $option in
        1)
            list_all_processes
            read -r -p "Press any key to continue..." key
            ;;
        2)
            list_specific_process
            read -r -p "Press any key to continue..." key
            ;;
        3)
            kill_process
            read -r -p "Press any key to continue..." key
            ;;
        4)
            clear
            display_menu 4
            read -r -p "Press any key to exit..." key
            clear
            break
            ;;
        *)
            echo "Invalid option. Please try again."
            read -r -p "Press any key to continue..." key
            ;;
    esac
done