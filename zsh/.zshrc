export ZSH="/Users/stijn/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="nerdfont-complete"
ENABLE_CORRECTION="false"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source ~/.oh-my-zsh/oh-my-zsh.sh
source ~/.zsh_profile
if [[ -n $ssh_connection ]]; then
   export editor='vim'
 else
   export EDITOR='nvim'
 fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export ES_JAVA_HOME=/opt/homebrew/Cellar/openjdk@17/17.0.7/libexec/openjdk.jdk/Contents/Home


# Load Angular CLI autocompletion.
source <(ng completion script)
