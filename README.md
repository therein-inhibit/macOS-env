## macos system setup

- download dotfile from proton drive or github to setup basic zsh enviroment
  - move the folder to ~/.dotfile
  - ```zsh
    zsh ~/.dotfile/setup.zsh
    ```

- install homebrew
  - needs admin permitions
  - intructions on https://brew.sh if nothing have changed follow this steps
  - ```zsh
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

  - then run to add Homebrew to your PATH:
  - ```zsh
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/mgj/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    ```

- dependecies
  - ```zsh
    brew install --cask iterm2
    ```
  - open iTerm2 and install its preference file from dotfile folder. Extra config is still necessary

  - ```zsh
    brew install zsh-syntax-highlighting  romkatv/powerlevel10k/powerlevel10k
    ```