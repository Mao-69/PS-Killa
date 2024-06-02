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

list_all_processes() {
    echo " "
    echo "$(tput setaf 2)┌─($(tput sgr 0)$(tput setaf 6)PS KILLA$(tput sgr 0)$(tput setaf 2))─[$(tput sgr 0)$(tput setaf 6)Menu:$(tput sgr 0)$(tput setaf 2)]$(tput sgr 0)"
    echo "$(tput setaf 1)1$(tput sgr 0). $(tput setaf 6)List all processes$(tput sgr 0)"
    echo "2. List specific process"
    echo "3. Kill process"
    echo "4. Exit"
    echo " "
    echo "$(tput setaf 2)┌──($(tput sgr 0)"$(tput setaf 6)Option$(tput sgr 0) $(tput setaf 6)1$(tput sgr 0)"$(tput setaf 2))-[$(tput sgr 0)"List all Processes"$(tput setaf 2)]$(tput sgr 0)"
    echo "$(tput setaf 2)└──($(tput sgr 0)$(tput setaf 6)List all Processes$(tput sgr 0)$(tput setaf 2))$(tput sgr 0) "
    ps aux
}

list_specific_process() {
    echo " "
    echo "$(tput setaf 2)┌─($(tput sgr 0)$(tput setaf 6)PS KILLA$(tput sgr 0)$(tput setaf 2))─[$(tput sgr 0)$(tput setaf 6)Menu:$(tput sgr 0)$(tput setaf 2)]$(tput sgr 0)"
    echo "1. List all processes"
    echo "$(tput setaf 1)2$(tput sgr 0). $(tput setaf 6)List specific process$(tput sgr 0)"
    echo "3. Kill process"
    echo "4. Exit"
    echo " "
    echo "$(tput setaf 2)┌──($(tput sgr 0)"$(tput setaf 6)Option$(tput sgr 0) $(tput setaf 6)2$(tput sgr 0)"$(tput setaf 2))-[$(tput sgr 0)"List Specific Process"$(tput setaf 2)]$(tput sgr 0)"
    read -p "$(tput setaf 2)└──($(tput sgr 0)$(tput setaf 6)process name$(tput sgr 0)$(tput setaf 2))$(tput sgr 0) " process_name
    ps aux | grep -i "$process_name" | grep -v grep
}

kill_process() {
    echo "$(tput setaf 2)────────────────────────────────────────────────────────────────$(tput sgr 0)"
    echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣶⣶⣶⣶⣶⣶⣾⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣤⣤⣄⣀⣀⣀⣰⣦⣼⣟⣛⣯⣭⣽⣿⣿⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠛⠛⢛⣿⣛⣛⣛⣻⣟⣛⡛⠛⠻⠿⠿⠟⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    echo "⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⣀⡀⠀⠀⠀⢀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣾⣿⣶⣶⡆"
    echo "⢰⣶⣶⣶⣾⣿⣿⣿⣿⣿⣿⡇⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⠀"
    echo "⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣤⣾⣿⡿⠿⢹⣀⠨⣿⣿⣿⡿⠿⠿⠛⠛⠛⠉⠉⠉⠉⠉⠉⠉⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    echo "⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    echo "⠸⠿⠿⠿⠇⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡟⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣃⡇"
    echo "$(tput setaf 2)────────────────────────────────────────────────────────────────$(tput sgr 0)"
    echo " "
    echo "$(tput setaf 2)┌─($(tput sgr 0)$(tput setaf 6)PS KILLA$(tput sgr 0)$(tput setaf 2))─[$(tput sgr 0)$(tput setaf 6)Menu:$(tput sgr 0)$(tput setaf 2)]$(tput sgr 0)"
    echo "1. List all processes"
    echo "2. List specific process"
    echo "$(tput setaf 1)3$(tput sgr 0). $(tput setaf 6)Kill process$(tput sgr 0)"
    echo "4. Exit"
    echo " "
    echo "$(tput setaf 2)┌──($(tput sgr 0)"$(tput setaf 6)Option$(tput sgr 0) $(tput setaf 6)3$(tput sgr 0)"$(tput setaf 2))-[$(tput sgr 0)"Kill Process"$(tput setaf 2)]$(tput sgr 0)"
    read -p "$(tput setaf 2)└──($(tput sgr 0)$(tput setaf 6)Process Name to Kill:$(tput sgr 0)$(tput setaf 2))$(tput sgr 0) " process_name
    ps aux | grep -i "$process_name" | grep -v grep | awk '{print $2}' | xargs -r sudo kill -9
}

while true; do
    clear
    display_ascii_art
    echo " "
    echo "$(tput setaf 2)┌─($(tput sgr 0)$(tput setaf 6)PS KILLA$(tput sgr 0)$(tput setaf 2))─[$(tput sgr 0)$(tput setaf 6)Menu:$(tput sgr 0)$(tput setaf 2)]$(tput sgr 0)"
    echo "1. List all processes"
    echo "2. List specific process"
    echo "3. Kill process"
    echo "4. Exit"
    echo " "
    echo "$(tput setaf 2)┌──($(tput sgr 0)"$(tput setaf 6)$(whoami)$(tput sgr 0)@$(tput setaf 6)$(hostname)$(tput sgr 0)"$(tput setaf 2))-[$(tput sgr 0)"$(pwd)"$(tput setaf 2)]$(tput sgr 0)"
    read -p "$(tput setaf 2)└──$(tput sgr 0)$(tput setaf 6)$ $(tput sgr 0) " option

    case $option in
        1)
            clear
            list_all_processes
            read -r -p "Press any key to continue..." key
            ;;
        2)
            clear
            list_specific_process
            read -r -p "Press any key to continue..." key
            ;;
        3)
            clear
            kill_process
            read -r -p "Press any key to continue..." key
            ;;
        4)
            clear
            echo " "
            echo "$(tput setaf 2)┌─($(tput sgr 0)$(tput setaf 6)PS KILLA$(tput sgr 0)$(tput setaf 2))─[$(tput sgr 0)$(tput setaf 6)Menu:$(tput sgr 0)$(tput setaf 2)]$(tput sgr 0)"
            echo "1. List all processes"
            echo "2. List specific process"
            echo "3. Kill process"
            echo "$(tput setaf 1)4$(tput sgr 0). $(tput setaf 6)Exit$(tput sgr 0)"
            echo " "
            echo "$(tput setaf 2)┌──($(tput sgr 0)"$(tput setaf 6)Option$(tput sgr 0) $(tput setaf 6)4$(tput sgr 0)"$(tput setaf 2))-[$(tput sgr 0)"Exit"$(tput setaf 2)]$(tput sgr 0)"
            echo "$(tput setaf 2)└──($(tput sgr 0)$(tput setaf 6)Exit$(tput sgr 0)$(tput setaf 2))$(tput sgr 0) "
            read -r -p "Press any key to continue..." key
            clear
            break
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done
