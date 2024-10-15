if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

pyenv init - | source
zoxide init fish | source
##
#export ANDROID_HOME="$HOME/Library/Android/Sdk"
#export PATH="$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$PATH"
#export ANDROID_AVD_HOME="./android"
#
#
## Custom Aliases
alias START_ANDROID_EMU="emulator -avd Pixel_3a_API_34_extension_level_7_arm64-v8a"
alias LATEST_TAGS="git tag --sort=-creatordate | grep int | head -n 1 &&  git tag --sort=-creatordate | grep pre-prod | head -n 1 &&  git tag --sort=-creatordate | grep aaron-prod | head -n 1"
alias local_dev="cd /Users/paul.williams/src/aaron/product_core/local_dev && ./start.sh"
alias cls="clear"
alias icat="kitten icat"


# rbenv
status --is-interactive; and rbenv init - fish | source

eval "$(/opt/homebrew/bin/brew shellenv)"
