options=("Packages" "Apps" "System")
choice=$(printf "%s\n" "${options[@]}" | walker --dmenu)
[ $? = 0 ] || exit


case $choice in
    "Packages")
       archen-packages
        ;;
    "Apps")
        ghostty -e walker
        ;;
    "System")
        archen-menu-system
        ;;
esac
