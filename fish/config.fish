if status is-interactive
  pfetch
end

# Remove fish hello message
set fish_greeting

# Alias
alias sdn="shutdown now"
alias rb="reboot"
alias c="clear"
alias e="exit"
alias v="vim"
alias n="nvim"

# Prompt
function fish_prompt
    set -l last_status $status 
    set -l stat
    if test $last_status -ne 0
        set stat (set_color red)"[$last_status]"(set_color normal)
    end
    string join '' -- (set_color 4c8ff5) (prompt_pwd) (set_color normal) $stat ' > '
end

# Functions
function nvim
    ~/Scripts/kitty_nvim.sh $argv
end
