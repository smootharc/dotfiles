function eld
    argparse 'h/help' 'p/prescibed=' 'r/rate=' 't/taken=' -- $argv
    or return
#    echo $_flag_t
    if not set -q _flag_p; or not set -q _flag_r; or not set -q _flag_t
        echo help
        return
    end
    set -l dh (math "($_flag_p[1] - $_flag_t[1]) / $_flag_r[1]")
    set -l d (math -s0 "($_flag_p[1] - $_flag_t[1]) / $_flag_r[1]")
    set -l h (math "$dh - $d")
    set -l h (math -s0 "$h * 24")
    date -Rd "+$d days +$h hours"
end
