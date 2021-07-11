
alias inf="uname -sr && \
            uptime | sed 's/ //' && \
            sensors |grep Pack && \
            acpi && \
            echo -n 'Memory in use: ' && free -m | grep Mem"

alias ltar="tar -ztvf"
alias untar="tar -zxvf"
alias atar="tar -cvzf"
alias vi="vim"

# take a note
function note {
    if [ -z "$1" ]; then
        echo "No note entered."
    else
        echo "$@" >> "$HOME/docs/_line_notes"
    fi
}

# display notes
function notes {
    FN="$HOME/docs/_line_notes"
    if [ ! -f "$FN" ]; then
        echo "No notes (file missing)."
        return
    fi

    if [ -z "$1" ]; then
        LINECOUNT="10"
    else
        LINECOUNT="$1"
    fi
  
    LNUM=$(wc -l "$FN"|cut -d " " -f1)
    echo "Showing max $LINECOUNT of $LNUM notes."
    tail "$FN" -n "$LINECOUNT"
}

# clear all notes
function clearnotes {
    rm "$HOME/docs/_line_notes"
    touch "$HOME/docs/_line_notes"
}

