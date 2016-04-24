# ------------------------------------------------------------------------------
# Description
# -----------
#
# proxychains4 will be inserted before the command
#
# ------------------------------------------------------------------------------
# Authors
# -------
#
# * dongcheng.du <dongcheng.du@gmail.com>
#
# ------------------------------------------------------------------------------

proxychains4-q-command-line() {
    [[ -z $BUFFER ]] && zle up-history
    if [[ $BUFFER == proxychains4\ -q\ * ]]; then
        LBUFFER="${LBUFFER#proxychains4\ -q\ }"
    elif [[ $BUFFER == proxychains4\ * ]]; then
        LBUFFER="${LBUFFER#proxychains4\ }"
    else
        LBUFFER="proxychains4 -q $LBUFFER"
    fi
}
proxychains4-command-line() {
    [[ -z $BUFFER ]] && zle up-history
    if [[ $BUFFER == proxychains4\ -q\ * ]]; then
        LBUFFER="${LBUFFER#proxychains4\ -q\ }"
    elif [[ $BUFFER == proxychains4\ * ]]; then
        LBUFFER="${LBUFFER#proxychains4\ }"
    else
        LBUFFER="proxychains4 $LBUFFER"
    fi
}
zle -N proxychains4-command-line
zle -N proxychains4-q-command-line
# Defined shortcut keys: [Esc] [p]
bindkey "\ep" proxychains4-q-command-line
bindkey "\e\ep" proxychains4-command-line
