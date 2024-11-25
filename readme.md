nvim v0.9.1

nvim configs with Packer

Dependencies for lsp/lint:
gcc
unzip
npm
python3

How to use:
Install [packer.nvim](https://github.com/wbthomason/packer.nvim)

Unix/Linux cmd:<br> 
```shell
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Windows PS cmd:<br> 
```shell
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

`:so` packer.lua and then `:PackerSync` until no more updates necessary.
`:TSUpdateSync` and `TSUpdate` as appropriate as well.
