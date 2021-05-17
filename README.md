# Setup guide

`git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim`

## Initialization

- Firstly, define the config structure.
- The entry point should start with a global table, followed by general settings,
  plugins, plugins settings, shortcuts, and LSP and all required languages.
- :Packer\* commands for installation
- :TS\* commands for treesitter
- Somehow when I include ft="tex" for vimtex, some of the conceal features doesn't work, so I disabled that.

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

## Autocompletion:

- hrsh7th/nvim-compe, nvim-treesitter/nvim-treesitter, windwp/nvim-autopairs, hrsh7th/vim-vsnip, windwp/nvim-ts-autotag.

### Vsnip

- To add custom snippets, just find the local snippet directory ( :echo g:vsnip_snippet_dir ) (usually ~/.vsnip) and add to the file. E.g. .tex snippets are located at plaintex.json and .latex snippets are located at tex.json etc.
- Instead of doing the above, it's better to just call VsnipOpen and vim will open the file for you.

## vimbqf

## vimtex

- Setup: Disable tex for treesitter (Highlighter), disable other tex plugins e.g. tex_conceal
- VimtexTocToggle

| Command | Action                                                     |
| ------- | ---------------------------------------------------------- |
| tsc     | toggle starred command (/enviromnent)                      |
| tsd     | toggle surrounding delimiter () => \left(\right)           |
| tse     | toggle starred enviromnent                                 |
| tsf     | toggle (inline) fractions (i.e. 1/2 => \frac{1}{2} )       |
| F7      | New command                                                |
| cse     | change surrounding environment (e.g. itemize => enumerate) |
| \]\]    | Close open delimiter (not needed with vimpairs             |
| zo      | Open fold                                                  |
| zc      | Close fold                                                 |
| zM/m    | Close all folds / fold level +1                            |
| zR/r    | Open all folds / fold level -1                             |
| <ldr>ll | Autocompile                                                |
| <ldr>lv | view                                                       |
| <ldr>lk | Kill                                                       |
| <ldr>lt | toggle                                                     |

## Markdown Preview

- Just run :MarkdownPreview (+ Stop / Toggle)

## Which key

- Simply define all important maps in the config file,
- Any collisions can be detected by running `:checkhealth which-key`

## Barbar

## Custom mappings

| Command   | Action           |
| --------- | ---------------- |
| <C-q>     | Close split      |
| <Leader>w | Write            |
| <F12>     | Toggle nvim tree |
K|LSP definition

