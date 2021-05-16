# Setup guide

`git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim`

## Initialization

- Firstly, define the config structure.
- The entry point should start with a global table, followed by general settings,
  plugins, plugins settings, shortcuts, and LSP and all required languages.

## Configure LSP / Linters

- Each LSP that I plan to use has to be imported within the init.lua entrypoint file.
- Basically go through each LSP config file and ensure all details are accurate.
- efm-ls: Includes linters and autoformatters for various languages.

Python: `pip install black flake8`
Markdown: My npm was not added to the system path, so I had to use the following commands.

```shell
nvm config set prefix $NVM_DIR/versions/node/v14.15.4
echo 'export PATH=~/.nvm/versions/node/v14.15.4/bin:$PATH' >> ~/.profile
source ~/.profile
touch
```

Shellcheck: Install via apt or conda etc.
