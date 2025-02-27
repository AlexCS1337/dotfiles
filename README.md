## Dependencies

>GNU Stow 
>nvChad (https://nvchad.com/docs/quickstart/install) 
>clink (if using Windows) 

## ⚙️ Installation

To set up these dotfiles on your system, follow these steps:

1. Ensure GNU Stow is installed on your system:

    ```bash
    # For Debian-based systems
    sudo apt-get install stow

	# For Arch-based systems
	sudo pacman -S stow

    # For Red Hat-based systems
    sudo yum install stow

    # For macOS
    brew install stow

    # For Windows
    git clone https://github.com/mattialancellotti/Stow.git (Untested)
    ```

2. Clone the repository to your home directory:

    ```bash
    git clone https://github.com/AlexCS1337/dotfiles.git ~/dotfiles
    ```

3. Navigate to the repository:

    ```bash
    cd ~/dotfiles
    ```

##  Usage

This dotfiles repository is organized by tool or application. Use Stow to apply the configuration for a particular tool. For example:

```bash
stow alacritty
stow tmux
stow nvim
# ... and so on
```
or `stow */` can be used to symlink all the configurations at once.
