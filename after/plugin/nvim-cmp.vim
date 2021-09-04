" Setup global configuration. More on configuration below.
lua <<EOF
  local cmp = require('cmp')

  -- For Tab, S-Tab, and C-Space bindings that came from
  -- https://github.com/quangnguyen30192/cmp-nvim-ultisnips
  local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
  end

  local check_back_space = function()
    local col = vim.fn.col(".") - 1
    return col == 0 or vim.fn.getline("."):sub(col, col):match("%s") ~= nil
  end

  cmp.setup {
    snippet = {
      expand = function(args)
        vim.fn["UltiSnips#Anon"](args.body)
      end,
    },

    -- You must set mapping if you want.
    mapping = {
      ['<C-p>'] = cmp.mapping.select_prev_item(),
      ['<C-n>'] = cmp.mapping.select_next_item(),
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Replace,
        select = true,
      }),


      ["<C-Space>"] = cmp.mapping(function(fallback)
        if vim.fn.pumvisible() == 1 then
          if vim.fn["UltiSnips#CanExpandSnippet"]() == 1 then
            return vim.fn.feedkeys(t("<C-R>=UltiSnips#ExpandSnippet()<CR>"))
          end

          vim.fn.feedkeys(t("<C-n>"), "n")
        elseif check_back_space() then
          vim.fn.feedkeys(t("<cr>"), "n")
        else
          fallback()
        end
      end, {
        "i",
        "s",
      }),
      ["<Tab>"] = cmp.mapping(function(fallback)
        if vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
          vim.fn.feedkeys(t("<C-R>=UltiSnips#JumpForwards()<CR>"))
        elseif vim.fn.pumvisible() == 1 then
          vim.fn.feedkeys(t("<C-n>"), "n")
        elseif check_back_space() then
          vim.fn.feedkeys(t("<tab>"), "n")
        else
          fallback()
        end
      end, {
        "i",
        "s",
      }),
      ["<S-Tab>"] = cmp.mapping(function(fallback)
        if vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
          return vim.fn.feedkeys(t("<C-R>=UltiSnips#JumpBackwards()<CR>"))
        elseif vim.fn.pumvisible() == 1 then
          vim.fn.feedkeys(t("<C-p>"), "n")
        else
          fallback()
        end
      end, {
        "i",
        "s",
      }),
    },

    -- You should specify your *installed* sources.
    sources = {
      { name = 'buffer' },
      { name = 'nvim_lsp' },
      { name = 'cmp-tabnine' },
      { name = 'path' },
      { name = 'calc' },
      { name = 'ultisnips' }
    },
  }

  local tabnine = require('cmp_tabnine.config')
  tabnine:setup({
    max_lines = 1000;
    max_num_results = 20;
    sort = true;
  })
EOF

" Setup buffer configuration (nvim-lua source only enables in Lua filetype).
autocmd FileType lua lua require'cmp'.setup.buffer {
\   sources = {
\     { name = 'buffer' },
\     { name = 'nvim_lua' },
\   },
\ }
