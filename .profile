# ~/.profile: Add special directories to system PATH

# Python binaries
export PATH="$PATH:$HOME/.local/bin"

# Rust binaries
export PATH="$PATH:$HOME/.cargo/bin"

# Go binaries
export PATH="$PATH:$HOME/.go/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
