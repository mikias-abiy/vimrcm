#!/usr/bin/env bash

# The directory where vimrc configuration files are stored.
_VIMRCS_PATH="$HOME/._vimrcs/"

# The configuration file of vimrcm this program.
_VIMRCMRC="$HOME/._vimrcmrc"

# Program name
_VIMRCM="vimrcm"


found=0
  
IFS=':' read -ra paths <<< "$PATH"
for p in "${paths[@]}"; do
  if [[ -e "${p}/${_VIMRCM}" ]]; then
    found=1
    echo "> File already exists in path"
    break
  fi
done

if [[ ! "$found" -eq 1 ]]; then
  cp "$_VIMRCM" /usr/bin/
  echo "> File added to path"
fi

if [[ ! -e "$_VIMRCS_PATH" ]]; then
  mkdir "$_VIMRCS_PATH"
  cp vimrcs/._vimrcs_mapper vimrcs/*vimrc "$_VIMRCS_PATH"
  echo "> vimrc configuration files copied"
else
  echo "> vimrc configurations already exists"
fi

if [[ ! -e "$_VIMRCMRC" ]]; then
  cp ._vimrcmrc "$HOME"
  echo "> vimrcm's configuration file copeid"
else
  echo "> vimrcm's configuration file already exists"
fi
  
