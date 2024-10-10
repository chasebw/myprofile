fortune | cowsay -f tux

alias vim="nvim"

# Default
# $PS1="\h:\W \u\$"

txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
bldgrn='\e[1;32m' # Bold Green
bldpur='\e[1;35m' # Bold Purple
txtrst='\e[0m'    # Text Reset
bldwht='\e[1;37m' # White
HOST_NAME="chase"

emojis=("🙊" "🐣" "👻" "😎" "🐢" "🦫" "🥸")
export VCPROMPT_FORMAT="[%n:%b] %m" 

EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}
prompt_command () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    printf "\n $bldwht%s: $bldpur%s $txtgrn%s\n$txtrst" "$HOST_NAME" "$dir" "$(vcprompt)"
}


PROMPT_COMMAND=prompt_command
PS1=" $EMOJI  \$ "


function mkcd()
{
	mkdir $1 && cd $1
}
