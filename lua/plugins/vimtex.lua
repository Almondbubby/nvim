return {
  "lervag/vimtex",
  lazy = false,  -- Load immediately for .tex files
  ft = { "tex" },  -- Load on .tex filetype
  
  config = function()
    -- Set PDF viewer
    vim.g.vimtex_view_method = 'zathura'
    vim.g.vimtex_view_general_viewer = 'zathura'
    
    -- Compiler settings
    --vim.g.vimtex_compiler_method = 'latexrun'
    
    -- Viewer settings
    vim.g.vimtex_view_automatic = 1  -- Auto-open viewer on compile
    
    -- Inverse search (click in PDF to jump to source)
    vim.g.vimtex_view_zathura_options = '-x "nvim --headless -c \\"VimtexInverseSearch %{input} %{line}\\""'
    
    -- Quickfix settings
    vim.g.vimtex_quickfix_mode = 0  -- Don't auto-open quickfix (0 = off, 1 = on open, 2 = on warning)
    vim.g.vimtex_quickfix_open_on_warning = 0
    
    -- Disable overfull/underfull warnings
    vim.g.vimtex_quickfix_ignore_filters = {
      'Underfull',
      'Overfull',
    }
    
    -- Folding (0 = disabled, 1 = enabled)
    vim.g.vimtex_fold_enabled = 0
    vim.g.vimtex_fold_manual = 0
    
    -- Syntax concealment (hide LaTeX commands for cleaner view)
    vim.g.vimtex_syntax_enabled = 1
    vim.g.vimtex_syntax_conceal = {
      accents = 1,
      ligatures = 1,
      cites = 1,
      fancy = 1,
      spacing = 0,
      greek = 1,
      math_bounds = 0,
      math_delimiters = 1,
      math_fracs = 1,
      math_super_sub = 1,
      math_symbols = 1,
      sections = 0,
      styles = 0,
    }
    vim.g.vimtex_syntax_conceal_cites = {
      type = 'brackets',
      icon = '📚',
    }
    
    -- Table of contents settings
    vim.g.vimtex_toc_config = {
      layer_status = {
        content = 1,
        label = 0,
        todo = 1,
        include = 0,
      },
      show_help = 1,
      split_pos = 'vert leftabove',
      split_width = 30,
    }
    
    -- Disable some features for better performance (optional)
    vim.g.vimtex_indent_enabled = 0
    vim.g.vimtex_imaps_enabled = 1  -- Insert mode mappings (snippets)
    vim.g.vimtex_complete_enabled = 1
    
    -- Close viewers on quit
    vim.g.vimtex_view_automatic = 1
    
    
    -- Don't open quickfix for warnings
    vim.g.vimtex_log_ignore = {
      'Underfull',
      'Overfull',
      'specifier changed to',
      'Token not allowed in a PDF string',
    }
    
    -- Keybindings (optional - VimTeX has defaults)
    -- Uncomment and customize if you want different bindings
    -- vim.keymap.set('n', '<leader>lc', '<cmd>VimtexCompile<CR>', { desc = 'VimTeX Compile' })
    -- vim.keymap.set('n', '<leader>lv', '<cmd>VimtexView<CR>', { desc = 'VimTeX View' })
    -- vim.keymap.set('n', '<leader>lk', '<cmd>VimtexStop<CR>', { desc = 'VimTeX Stop' })
    -- vim.keymap.set('n', '<leader>le', '<cmd>VimtexErrors<CR>', { desc = 'VimTeX Errors' })
    -- vim.keymap.set('n', '<leader>lt', '<cmd>VimtexTocToggle<CR>', { desc = 'VimTeX TOC' })
    -- vim.keymap.set('n', '<leader>lm', '<cmd>VimtexImapsList<CR>', { desc = 'VimTeX Imaps' })
    
    -- Autocmds for LaTeX files
    local vimtex_augroup = vim.api.nvim_create_augroup('VimTeX', { clear = true })
    
    -- Enable spell check for LaTeX
    vim.api.nvim_create_autocmd('FileType', {
      group = vimtex_augroup,
      pattern = 'tex',
      callback = function()
        vim.opt_local.spell = true
        vim.opt_local.spelllang = 'en_us'
        vim.opt_local.conceallevel = 2  -- Enable concealment
        vim.opt_local.wrap = true
        vim.opt_local.linebreak = true
        vim.opt_local.textwidth = 80
      end,
    })
    
    -- Auto-compile on save (optional)
    -- vim.api.nvim_create_autocmd('BufWritePost', {
    --   group = vimtex_augroup,
    --   pattern = '*.tex',
    --   callback = function()
    --     vim.cmd('VimtexCompile')
    --   end,
    -- })
  end,
}
