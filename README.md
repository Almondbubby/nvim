# nvim

My Neovim configuration built with [lazy.nvim](https://github.com/folke/lazy.nvim).

## Structure

```
.
├── init.lua                 # Entry point
├── lazy-lock.json           # Plugin lock file
└── lua/
    ├── config/
    │   └── lazy.lua         # lazy.nvim bootstrap and setup
    ├── options.lua          # Editor options
    └── plugins/
        ├── cmp.lua          # Completion (nvim-cmp)
        ├── gruvbox.lua      # Colorscheme
        ├── lsp.lua          # LSP configuration
        ├── markview.lua     # Markdown rendering
        ├── telescope.lua    # Fuzzy finder
        ├── atone.lua        # Atone
        └── vimtex.lua       # LaTeX support
```

## Plugins

- **LSP** — `nvim-lspconfig` with servers for TypeScript, HTML, CSS, Tailwind, Python, Lua, C/C++, and Java
- **Completion** — `nvim-cmp` with LSP, snippet, buffer, path, and cmdline sources
- **Telescope** — fuzzy finding for files, grep, and buffers with native fzf
- **VimTeX** — LaTeX editing with Zathura as the PDF viewer
- **Markview** — in-editor Markdown rendering
- **Gruvbox** — colorscheme with transparency enabled

## Setup

```sh
git clone https://github.com/Almondbubby/nvim ~/.config/nvim
nvim
```

Plugins will install automatically on first launch.
