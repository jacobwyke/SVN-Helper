# .bashrc

# Add the SVN Helper aliases
#
# Ensure this path is the correct to where you placed the SVN Helper folder
. ~/SVN-Helper/.svn-helper.rc

alias ducks='du -cks * | sort -rn | head -15'

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

PATH=$PATH:
export PATH