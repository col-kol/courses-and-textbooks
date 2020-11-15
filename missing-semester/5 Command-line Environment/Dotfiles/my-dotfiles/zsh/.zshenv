
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/colkol/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/colkol/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/colkol/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/colkol/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# aliases
alias ml="conda activate ml"

# jupyter notebook
alias jupy="jupyter notebook"

# kaggle
alias kaggle="~/.local/bin/kaggle"

#colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

