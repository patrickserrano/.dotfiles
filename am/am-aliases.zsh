export AM_HOME="$HOME/.am"
export AM_PROMPT="$AM_HOME/prompt"

# add scripts to path
export PATH="$AM_PROMPT/scripts:$PATH"

# source user files
for USER_SCRIPT in $AM_PROMPT/user/*; do
    source "$USER_SCRIPT"
done

# test for prompt bin
if [ -d "$AM_PROMPT/user/bin" ]; then
    # append prompt to path
    export PATH="$PATH:$AM_PROMPT/user/bin"
fi

# evaluate eval scripts
for EVAL_SCRIPT in $AM_PROMPT/scripts/eval/*; do
    source "$EVAL_SCRIPT"
done

# aliases
# -- prompt for overwrites
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# -- DOS-style shortcuts
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd .. ; ..'

# -- sudo alias (allow other alias extensions to work when sudo-ing)
alias sudo='sudo '