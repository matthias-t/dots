set -x EDITOR micro
set -x BROWSER firefox-developer-edition
set -x TERMINAL xst
set -x PATH $PATH /home/matthias/bin /home/matthias/.cargo/bin /home/matthias/code/go/bin
set -x MAIL /home/matthias/documents/mail

set -x GOPATH /home/matthias/code/go
set -x PASSWORD_STORE_CHARACTER_SET '[:graph:]'
set -gx QT_QPA_PLATFORMTHEME qt5ct

workspace shell fish | source
