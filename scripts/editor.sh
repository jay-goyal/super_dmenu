declare -a editors=(
    "CLion"
    "Emacs"
    "Neovim"
)

choice=$(printf '%s\n' "${editors[@]}" | dmenu -h 27 -l 20 -bw 1 -p "Edit Using: ")

case $choice in
    CLion)
        clion
        ;;
    Emacs)
        emacs
        ;;
    Neovim)
        alacritty -e nvim
        ;;
esac
