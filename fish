set -x EDITOR micro
set -x BROWSER firefox-developer-edition
set -x TERMINAL xst
set -x PATH $PATH /home/matthias/bin /home/matthias/.cargo/bin /home/matthias/code/go/bin
set -x MAIL /home/matthias/documents/mail

set -x GOPATH /home/matthias/code/go
set -x PASSWORD_STORE_CHARACTER_SET '[:graph:]'
set -gx QT_QPA_PLATFORMTHEME qt5ct

set -x LESS_TERMCAP_md (printf (style 1 33))    # bold yellow
set -x LESS_TERMCAP_so (printf (style 1 30 47)) # bold black on white
set -x LESS_TERMCAP_us (printf (style 1 32))    # bold green
set -x LESS_TERMCAP_mb (printf (style 1 32))    # bold green
set -x LESS_TERMCAP_me (printf (style 0))       # reset
set -x LESS_TERMCAP_se (printf (style 0))
set -x LESS_TERMCAP_ue (printf (style 0))

workspace shell fish | source
