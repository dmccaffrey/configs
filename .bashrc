# Run zsh
if [[ -n $PS1 ]]; then
    : # Interactive Only

    # Try Zsh
    if [ -f /bin/zsh ]; then
        exec /bin/zsh --login
    fi

else
    : # NON-Interactive Only
fi

if shopt -q login_shell ; then
    : # Login Only
else
    : # NON-Login Only
fi
