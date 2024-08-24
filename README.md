# nvim
My nvim configuration for neovim on ubuntu.

## Folder Structure
```
~/.config/nvim
|-- init.lua
|-- lua/
|  |-- config/
|  |  |-- aaa.lua
|  |  |-- bbb.lua
|  |  |-- ccc.lua
|  |  |-- ddd.lua
|  |-- plugins/
|     |-- xxx.lua
|     |-- yyy.lua
|       :
```

## Instructions

### First Time Setup
1. Install the latest version of Neovim from the Neovim Launchpad PPA. Ubuntu apt has an older version, and since then much has changed, so we'll prefer the latest stable from the PPA.
- `sudo add-apt-repository ppa:neovim-ppa/stable`
- `sudo apt update`  
- `sudo apt install neovim`
2. Ensure that the nvim runtimepath is correctly configured to include `~/.config.nvim`.  
You can check that by executing this nvim command: `:echo &runtimepath`. 
3. Both `init.lua` as well as the `lua/` folder and its contents should be symlinked to `~/.config/nvim` (Might need to create the nvim folder if first time).  
- `ln -sfn /path/to/init.lua ~/.config/nvim/init.lua`
- `ln -sfn /path/to/lua ~/.config/nvim/lua`  
The next time vim is opened, the config changes will apply.

### Configuration
Configuration files live in lua/config.  
The template I am using splits things up logically into a few lua files, that are all included in the top-level init.lua.  

### Plugins
Plugins live in lua/plugins.
Plugins can either be manually included in init.lua or managed by lazy nvim.  
Each plugin gets its own lua file in there, and lazy or manual edits to init.lua can be used to configure what's enabled.

## References
https://m4xshen.dev/posts/build-your-modern-neovim-config-in-lua (Using their folder structure.)

