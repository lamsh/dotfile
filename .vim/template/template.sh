:
################################################################################
## \file      template.sh
## \author    SENOO, Ken
## \copyright CC0
## \date      created date: 
## \date      updated date: 
################################################################################

## \brief Initialize POSIX shell environment
init(){
	set -eu
	umask 0022
	PATH="$(command -p getconf PATH 2>&- || :)${PATH+:$PATH}"
	export PATH="${PATH#:}" LC_ALL='C'
}

is_main()(
	EXE_NAME='.sh'
	[ "$EXE_NAME" = "${0##*/}" ]
)

init
