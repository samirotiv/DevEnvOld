# Development Environment

## Environment
- Solarized Light colorscheme
- Vim Plugins
    - Intelligent autocomplete
    - File explorer
    - Git integration 
    - Mouse support 
    - Typescript support 
    - A few nifty plugins
- Tmux
    - Prefix is now \` (tilde)
    - Press tilde twice to enter the tilde character itself - copy paste should work normally
    - Shortcuts:
        - Vertical split: \`+: 
        - Horizontal split: \`-
        - Jump to tab: \'[number]
        - Move to split pane: Alt+[Arrow]
        - All other Tmux shortcuts are preserved
    - Command: remux
    
         Added to ~/bin, it connects to an existing tmux session if it exists, or creates a new tmux session

## Installation Instructions
- Clone
- Run `bash checkout.sh`
- If on Ubuntu, just run `bash setup-ubuntu.sh`. Otherwise, install the prerequisites, and then run `bash build.sh`
- Once build is ready, run `bash copy.sh`
- Set terminal colorscheme to Solarized Light

## Optional: Vim from source
See the packages folder to install vim from source. Given script: build-vim.sh

## Prerequisites
These will be installed automatically if on Ubuntu:
- vim (Repo version)
- tmux
- tig
- CMake
- Python/Python3 Dev Headers
- npm & Typescript
- Jedi
- flake8
