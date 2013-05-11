# Install homebrew
echo "Installing homebrew"
# ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
echo "Finished installing homebrew. Installing kegs"
brew install mercurial &&
brew install vim &&
brew install clojure &&
brew install haskell-platform &&
brew install cmake &&
brew install python &&
brew install rbenv &&
brew install ruby-build &&
brew install zsh &&
brew install boost &&
brew install git
echo "Finished installing kegs. Changing shell"
chsh /usr/local/bin/zsh
