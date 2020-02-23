#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "./utils.sh"

on_start() {
  print_macos_header

  print_info "This script will guide you through installing macOS applications and cli tools."
  print_info "It will not install anything without your direct agreement!"

  ask_for_confirmation "Do you want to proceed with installation?"

  if ! answer_is_yes; then
    exit 1
  fi
}


main() {
  # Start
  on_start

  # Make sure we’re using the latest Homebrew.
  brew_update
  # Upgrade any already-installed formulae.
  brew_upgrade

  brew_tap "homebrew/cask-fonts"
  brew_tap "homebrew/cask-versions"
  brew_tap "homebrew/bundle"
  brew_tap "homebrew/services"
  brew_tap "tavianator/tap"
  brew_tap "universal-ctags/universal-ctags"
  brew_tap "sachaos/todoist"
  brew_tap "dbcli/tap"
  brew_tap "xo/xo"
  brew_tap "dandavison/delta https://github.com/dandavison/delta"
  brew_tap "homebrew-ffmpeg/ffmpeg"

  print_in_purple "\n   Core\n"
  brew_install "Openssl" "openssl"
  brew_install "Git" "git"
  brew_install "Git" "hub"
  brew_install "Python" "python"
  brew_install "Python@2" "python@2"
  brew_install "Gawk" "gawk"
  # Install GNU `sed`, overwriting the built-in `sed`.
  brew_install "GNU-sed" "gnu-sed"
  # Install GnuPG to enable PGP-signing commits.
  brew_install "GNUPG" "gnupg"
  # GNU File Shell and Text utilities
  brew_install "Coreutils" "coreutils"
  # Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
  brew_install "Findutils" "findutils"
  # Install some other useful utilities like `sponge`.
  brew_install "Moreutils" "moreutils"
  brew_install "CURL" "curl"
  brew_install "Httpie" "httpie"
  # Install `wget` with IRI support.
  brew_install "Wget" "wget"
  brew_install "Pinentry" "pinentry-mac"
  brew_install "ZSH" "zsh"
  # Install a modern version of Bash.
  brew_install "Modern version of Bash" "bash"
  brew_install "Bash Completion" "bash-completion2"
  brew_install "Transcrypt" "transcrypt"

  print_in_purple "\n   Languages\n"
  brew_install "Node" "node"
  brew_install "Yarn" "yarn"
  brew_install "Ruby" "ruby"

  print_in_purple "\n   Core apps\n"
  brew_install "Tmux" "tmux --HEAD"
  brew_install "Neovim" "neovim --HEAD"
  brew_install "VIM" "vim"
  brew_install "Newsboat" "newsboat"

  print_in_purple "\n   Core Utils\n"
  brew_install "Tree" "tree"
  brew_install "Hub" "hub"
  brew_install "Fzf" "fzf"
  brew_install "FD" "fd"
  brew_install "Ripgrep" "ripgrep"
  brew_install "bat" "bat"
  brew_install "Highlight -> Convert source code to formatted text with syntax highlighting" "highlight"
  brew_install "Pandoc -> Markup File Converter" "pandoc"
  brew_install "URLview Extracts URLs from text" "urlview"
  brew_install "Cloc" "cloc"
  brew_install "Loc" "loc"
  brew_install "Tokei" "tokei"
  brew_install "Diff-So-Fancy" "diff-so-fancy"
  brew_install "Git Delta" "dandavison/delta/git-delta"
  brew_install "Z - jump around" "z"
  brew_install "Image Magick" "imagemagick"
  brew_install "Rename" "rename"
  brew_install "Universal Ctags" "universal-ctags/universal-ctags/universal-ctags --HEAD"
  brew_install "YAML processor" "yq"
  brew_install "JSON processor" "jq"
  brew_install "W3M" "w3m"
  brew_install "Htop" "htop"
  brew_install "Ffmpeg" "homebrew-ffmpeg/ffmpeg/ffmpeg --HEAD"
  brew_install "LSD" "lsd"
  brew_install "Grep" "grep"
  brew_install "Streamlink" "streamlink"
  brew_install "YAML Lint" "yamllint"
  brew_install "Grip" "grip"
  brew_install "Exiftool" "exiftool"
  brew_install "Proselint" "proselint"
  brew_install "Rsync" "rsync"
  brew_install "Task" "task"
  brew_install "Tasksh" "tasksh"
  brew_install "Timewarrior" "timewarrior"
  brew_install "The fuck" "thefuck"
  brew_install "Ncdu" "ncdu"
  brew_install "Mycli" "mycli"
  brew_install "Pgcli" "pgcli"
  brew_install "Usql" "usql"
  brew_install "Reattach Namespace" "reattach-to-user-namespace"
  brew_install "Tldr" "tldr"
    # A simple command line interface for the Mac App Store
  brew_install "MAS -> Mac App Store command line interface" "mas"
  
  print_in_purple "\n   Desktop applications\n"
  brew_install "Chrome" "google-chrome" "homebrew/cask" "cask"
  brew_install "Chrome Canary" "google-chrome-canary" "homebrew/cask-versions" "cask"
  brew_install "Chromium" "chromium" "homebrew/cask" "cask"
  brew_install "Firefox" "firefox" "homebrew/cask" "cask"
  brew_install "Firefox Developer" "firefox-developer-edition" "homebrew/cask-versions" "cask"
  brew_install "Firefox Nightly" "firefox-nightly" "homebrew/cask-versions" "cask"
  brew_install "iTerm2" "iterm2" "homebrew/cask" "cask"
  brew_install "VSCode" "visual-studio-code" "homebrew/cask" "cask" 
  brew_install "Karabiner Elements" "karabiner-elements" "homebrew/cask" "cask" 
  brew_install "Spectacle" "spectacle" "homebrew/cask" "cask"
  brew_install "Hammerspoon" "hammerspoon" "homebrew/cask" "cask"
  brew_install "Insomnia" "insomnia" "homebrew/cask" "cask"
  brew_install "Discord" "discord" "homebrew/cask" "cask"
  brew_install "Sequel Pro" "sequel-pro" "homebrew/cask" "cask"
  brew_install "Kap" "kap" "homebrew/cask" "cask"
  brew_install "ImageOptim" "imageoptim" "homebrew/cask" "cask"
  brew_install "MPV" "mpv" "homebrew/cask" "cask"
  brew_install "Qlcolorcode" "qlcolorcode" "homebrew/cask" "cask" 
  brew_install "Qlmarkdown" "qlmarkdown" "homebrew/cask" "cask" 
  brew_install "Quicklook JSON" "quicklook-json" "homebrew/cask" "cask" 
  brew_install "Quicklook CSV" "quicklook-csv" "homebrew/cask" "cask" 
  brew_install "Qlstephen" "qlstephen" "homebrew/cask" "cask"
  brew_install "Qlimagesize" "qlimagesize" "homebrew/cask" "cask" 
  brew_install "Qlprettypatch" "qlprettypatch" "homebrew/cask" "cask" 
  brew_install "Qlvideo" "qlvideo" "homebrew/cask" "cask"
  brew_install "Webp Quicklook" "webpquicklook" "homebrew/cask" "cask"
  brew_install "Fira Code Font" "font-fira-code" "homebrew/cask" "cask"
  brew_install "Hack Nerd Font" "font-hack-nerd-font" "homebrew/cask" "cask"
  
  # Spark
  mas install 1176895641
  # The Unarchiver
  mas install 425424353
  # Slack
  mas install 803453959
  # Dashlane
  mas install 552383089
  # Alfred
  mas install 405843582
  
  finish
}

main