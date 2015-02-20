#!/bin/bash
# @author: SENOO, Ken
# (Last Update: 2015-02-20T14:03+09:00)

script_dir=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)

windir=".atom tecplot.cfg"
homefile="tecplot.cfg"
# .$B$G;O$^$k%U%!%$%k$H(Bhomefile$B$G;XDj$7$?%U%!%$%k$rBP>](B
# windir$B$G;XDj$7$?%U%!%$%k$O(B$USERPROFILE$B$K%j%s%/(B
for dotfile in ${script_dir}/{.??*,$homefile}
do
  if [ "$OS" == "Windows_NT" ] && echo $windir | grep -q ${dotfile##*/}; then
        ln -sfd $dotfile $USERPROFILE/
  else
    ln -sfd  $dotfile  ~/
  fi
done
