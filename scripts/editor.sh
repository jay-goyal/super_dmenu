declare -a editors=(
    "VS Code"
    "Emacs"
    "Neovim"
)

choice=$(printf '%s\n' "${editors[@]}" | dmenu -h 27 -l 20 -bw 1 -p "Edit Using: ")

case $choice in
    "VS Code")
        code
        ;;
    "Emacs")
        emacsclient -c
        ;;
    "Neovim")
        alacritty -e nvim
        ;;
esac
