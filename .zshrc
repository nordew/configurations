# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
ZSH_THEME_RANDOM_CANDIDATES=( "agnoster" "robbyrussell" )

# Plugins
plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
)

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Additional configuration
export LANG=en_US.UTF-8
export EDITOR='vim'

# Aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# Enable case-insensitive completion
CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"

# Set custom folder for plugins
ZSH_CUSTOM=$ZSH/custom

# Load additional plugins from $ZSH_CUSTOM/plugins/
# Example format: plugins+=(rails git textmate ruby lighthouse)
plugins+=(
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# Enable command auto-correction
ENABLE_CORRECTION="true"

# Display red dots while waiting for completion
COMPLETION_WAITING_DOTS="%F{yellow}...%f"

# Use vi mode
bindkey -v

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='code'  # Replace 'code' with your preferred editor
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Starship prompt
eval "$(starship init zsh)"

