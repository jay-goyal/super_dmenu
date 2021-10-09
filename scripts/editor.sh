declare -a editors=(
"CLion:-:clion"
"Emacs:-:emacsclient -c"
"NeoVim:-:nvim"
)

choice=$(printf '%s\n' "${editors[@]}" | awk -F ':' '{print $1}' | dmenu -h 27 -l 20 -bw 1 -p "Edit Using: ")

editor=$(printf '%s\n' "${choice}" | awk -F ':' '{print $NF}')
$editor
