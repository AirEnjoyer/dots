options=("Packages" "Apps" "System")
choice=$(printf "%s\n" "${options[@]}" | walker --dmenu)
[ $? = 0 ] || exit


case $choice in
    "Packages")
       ghostty -e archen-packages
        ;;
    "Apps")
        ghostty -e walker
        ;;
    "System")
        ghostty -e archen-system
        ;;
esac
