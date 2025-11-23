-- leader 
vim.keymap.set("n", "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = " "

-------------------------------------------------------------------------------
--
-- preferences
--
-------------------------------------------------------------------------------
-- never ever folding
vim.opt.foldenable = false
vim.opt.foldmethod = 'manual'
vim.opt.foldlevelstart = 99
-- let's try smartindent/cindent. Instead of default auto indent
vim.opt.autoindent = false
vim.opt.cindent = true
vim.opt.cmdheight = 2
-- Completion
-- Better completion
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force user to select one from the menu
vim.opt.completeopt = 'menuone,noinsert,noselect'
-- mouse all modes
vim.opt.mouse = 'a'
-- Not keep dir buffer when using netrw
vim.g.netrw_keepdir = 0
-- Wrapping options
vim.opt.formatoptions="tc"
-- wrap text and comments using textwidth
vim.opt.formatoptions:append("r")
-- continue comments when pressing ENTER in I mode
vim.opt.formatoptions:append("q")
-- enable formatting of comments with gq
vim.opt.formatoptions:append("n")
-- detect lists for formatting
vim.opt.formatoptions:append("b")
-- auto-wrap in insert mode, and do not wrap old long lines
-- not setting updatedtime because I use K to manually trigger hover effects
-- and lowering it also changes how frequently files are written to swap.
-- vim.opt.updatetime = 300
-- if key combos seem to be "lagging"
-- http://stackoverflow.com/questions/2158516/delay-before-o-opens-a-new-line
-- vim.opt.timeoutlen = 300
-- keep more context on screen while scrolling
vim.opt.scrolloff = 2
-- never show me line breaks if they're not there
vim.opt.wrap = false
-- always draw sign column. prevents buffer moving when adding/deleting sign
vim.opt.signcolumn = 'yes'
-- relative line numbers
vim.opt.relativenumber = true
-- and show the absolute line number for the current line
vim.opt.number = true
-- keep current content top + left when splitting
vim.opt.splitright = true
vim.opt.splitbelow = true
-- infinite undo!
-- NOTE: ends up in ~/.local/state/nvim/undo/ if not set undodir
vim.opt.undofile = true
vim.opt.undodir =  (vim.fn.escape(vim.fn.expand("$HOME"), '\\') .. '/.vimdid/')
-- Wild menu
-- in completion, when there is more than one match,
-- list all matches, and only complete to longest common match
vim.opt.wildmode = 'list:longest'
-- when opening a file with a command (like :e),
-- don't suggest files like there:
vim.opt.wildignore = '.hg,.svn,*~,*.png,*.jpg,*.gif,*.min.js,*.swp,*.o,vendor,dist,_site'
-- tabs: go big or go home
vim.opt.shiftwidth = 8
vim.opt.softtabstop = 8
vim.opt.tabstop = 8
vim.opt.expandtab = false
-- case-insensitive search/replace
vim.opt.ignorecase = true
-- unless uppercase in search term
vim.opt.smartcase = true
-- never ever make my terminal beep
vim.opt.vb = true
-- more useful diffs (nvim -d)
--- by ignoring whitespace
vim.opt.diffopt:append('iwhite')
--- and using a smarter algorithm
--- https://vimways.org/2018/the-power-of-diff/
--- https://stackoverflow.com/questions/32365271/whats-the-difference-between-git-diff-patience-and-git-diff-histogram
--- https://luppeng.wordpress.com/2020/10/10/when-to-use-each-of-the-git-diff-algorithms/
vim.opt.diffopt:append('algorithm:histogram')
vim.opt.diffopt:append('indent-heuristic')
-- show a column at 80 characters as a guide for long lines
vim.opt.colorcolumn = '80'
-- show more hidden characters
-- also, show tabs nicer
vim.opt.listchars = 'tab:^ ,nbsp:¬,extends:»,precedes:«,trail:•'
-- Enable syntax highlighting
vim.cmd('syntax on')
-- Set normal background to NONE (for transparency)
vim.api.nvim_set_hl(0, 'Normal', { ctermbg = 'NONE' })

-------------------------------------------------------------------------------
--
-- hotkeys
--
-------------------------------------------------------------------------------
-- quick-save
vim.keymap.set('n', '<leader>w', '<cmd>w<cr>')
-- make missing : less annoying
vim.keymap.set('n', ';', ':')
-- Ctrl+j and Ctrl+k as Esc
vim.keymap.set('n', '<C-j>', '<Esc>')
vim.keymap.set('i', '<C-j>', '<Esc>')
vim.keymap.set('v', '<C-j>', '<Esc>')
vim.keymap.set('s', '<C-j>', '<Esc>')
vim.keymap.set('x', '<C-j>', '<Esc>')
vim.keymap.set('c', '<C-j>', '<Esc>')
vim.keymap.set('o', '<C-j>', '<Esc>')
vim.keymap.set('l', '<C-j>', '<Esc>')
vim.keymap.set('t', '<C-j>', '<Esc>')
-- Ctrl-j is a little awkward unfortunately:
-- https://github.com/neovim/neovim/issues/5916
-- So we also map Ctrl+k
vim.keymap.set('n', '<C-k>', '<Esc>')
vim.keymap.set('i', '<C-k>', '<Esc>')
vim.keymap.set('v', '<C-k>', '<Esc>')
vim.keymap.set('s', '<C-k>', '<Esc>')
vim.keymap.set('x', '<C-k>', '<Esc>')
vim.keymap.set('c', '<C-k>', '<Esc>')
vim.keymap.set('o', '<C-k>', '<Esc>')
vim.keymap.set('l', '<C-k>', '<Esc>')
vim.keymap.set('t', '<C-k>', '<Esc>')
-- Ctrl+h to stop searching
vim.keymap.set('v', '<C-h>', '<cmd>nohlsearch<cr>')
vim.keymap.set('n', '<C-h>', '<cmd>nohlsearch<cr>')
-- Jump to start and end of line using the home row keys
vim.keymap.set('', 'H', '^')
vim.keymap.set('', 'L', '$')
-- Neat X clipboard integration
-- <leader>p will paste clipboard into buffer
-- <leader>c will copy entire buffer into clipboard
vim.keymap.set('n', '<leader>p', '<cmd>read !wl-paste<cr>')
vim.keymap.set('n', '<leader>c', '<cmd>w !wl-copy<cr><cr>')
-- <leader><leader> toggles between buffers
vim.keymap.set('n', '<leader><leader>', '<c-^>')
-- <leader>, shows/hides hidden characters
vim.keymap.set('n', '<leader>,', ':set invlist<cr>')
-- always center search results
vim.keymap.set('n', 'n', 'nzz', { silent = true })
vim.keymap.set('n', 'N', 'Nzz', { silent = true })
vim.keymap.set('n', '*', '*zz', { silent = true })
vim.keymap.set('n', '#', '#zz', { silent = true })
vim.keymap.set('n', 'g*', 'g*zz', { silent = true })
-- "very magic" (less escaping needed) regexes by default
vim.keymap.set('n', '?', '?\\v')
vim.keymap.set('n', '/', '/\\v')
vim.keymap.set('c', '%s/', '%sm/')
-- open new file adjacent to current file
vim.keymap.set('n', '<leader>o', ':e <C-R>=expand("%:p:h") . "/" <cr>')
-- no arrow keys --- force yourself to use the home row
vim.keymap.set('n', '<up>', '<nop>')
vim.keymap.set('n', '<down>', '<nop>')
vim.keymap.set('i', '<up>', '<nop>')
vim.keymap.set('i', '<down>', '<nop>')
vim.keymap.set('i', '<left>', '<nop>')
vim.keymap.set('i', '<right>', '<nop>')
-- let the left and right arrows be useful: they can switch buffers
vim.keymap.set('n', '<left>', ':bp<cr>')
vim.keymap.set('n', '<right>', ':bn<cr>')
-- make j and k move by visual line, not actual line, when text is soft-wrapped
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
-- handy key map for replacing up to next _ (like in variable names)
vim.keymap.set('n', '<leader>m', 'ct_')


-- Allow virtual text
vim.diagnostic.config({ virtual_text = true, virtual_lines = false })

-------------------------------------------------------------------------------
--
-- autocommands
--
-------------------------------------------------------------------------------
-- highlight yanked text
vim.api.nvim_create_autocmd(
	'TextYankPost',
	{
		pattern = '*',
		command = 'silent! lua vim.highlight.on_yank({ timeout = 500 })'
	}
)

-- jump to last edit position on opening file
vim.api.nvim_create_autocmd(
	'BufReadPost',
	{
		pattern = '*',
		callback = function(ev)
			if vim.fn.line("'\"") > 1 and vim.fn.line("'\"") <= vim.fn.line("$") then
				-- except for in git commit messages
				-- https://stackoverflow.com/questions/31449496/vim-ignore-specifc-file-in-autocommand
				if not vim.fn.expand('%:p'):find('.git', 1, true) then
					vim.cmd('exe "normal! g\'\\""')
				end
			end
		end
	}
)

--file detection
vim.api.nvim_create_autocmd('BufRead', {
  pattern = {
    '*.plot',
    '*.md',
    '*.lds',
    '*.tex',
    '*.trm',
    '*.xlsx.axlsx'
  },
  callback = function()
    local ext_to_ft = {
      plot = 'gnuplot',
      md = 'markdown',
      lds = 'ld',
      tex = 'tex',
      trm = 'c',
      ['xlsx.axlsx'] = 'ruby'
    }
    
    local filename = vim.fn.expand('%:e')
    if filename == 'axlsx' then
      filename = vim.fn.expand('%:e:e') .. '.' .. filename
    end
    
    if ext_to_ft[filename] then
      vim.bo.filetype = ext_to_ft[filename]
    end
  end
})

-- prevent accidental writes to buffers that shouldn't be edited
vim.api.nvim_create_autocmd('BufRead', { pattern = '*.orig', command = 'set readonly' })
vim.api.nvim_create_autocmd('BufRead', { pattern = '*.pacnew', command = 'set readonly' })
-- leave paste mode when leaving insert mode (if it was on)
vim.api.nvim_create_autocmd('InsertLeave', { pattern = '*', command = 'set nopaste' })
-- help filetype detection (add as needed)
--vim.api.nvim_create_autocmd('BufRead', { pattern = '*.ext', command = 'set filetype=someft' })
--
-- shorter columns in text because it reads better that way
local text = vim.api.nvim_create_augroup('text', { clear = true })
for _, pat in ipairs({'text', 'markdown', 'mail', 'gitcommit'}) do
	vim.api.nvim_create_autocmd('Filetype', {
		pattern = pat,
		group = text,
		command = 'setlocal spell tw=72 colorcolumn=73',
	})
end
--- tex has so much syntax that a little wider is ok
vim.api.nvim_create_autocmd('Filetype', {
	pattern = 'tex',
	group = text,
	command = 'setlocal spell tw=80 colorcolumn=81',
})
-- TODO: no autocomplete in text

-------------------------------------------------------------------------------
--
-- plugin configuration
--
-------------------------------------------------------------------------------
-- first, grab the manager
-- https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
-- then, setup!
require("lazy").setup({
	-- main color scheme
	{
		'catppuccin/nvim',
		name = "catppuccin",
		lazy = false, -- load at start
		priority = 1000, -- load first
		config = function()
			require("catppuccin").setup({
			    compile_path = vim.fn.stdpath "cache" .. "/catppuccin",
			    flavour = "mocha",
			    background = { -- :h background
			        light = "latte",
			        dark = "mocha",
			    },
			    transparent_background = false, 
			    show_end_of_buffer = false, 
			    term_colors = false, 
			    dim_inactive = {
			        enabled = false, 
			        shade = "dark",
			        percentage = 0.15, 
			    },
			    no_italic = false, 
			    no_bold = false, 
			    no_underline = false, 
			    styles = { 
			        comments = { "italic", "bold" },
			        conditionals = { "italic" },
			    },
			    integrations = {
			        cmp = true,
				vim_sneak = true,
			    },
			})

			vim.cmd([[hi Normal ctermbg=NONE]])
			-- Less visible window separator
			vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#9399b2" })
			-- Make it clearly visible which argument we're at.
			local marked = vim.api.nvim_get_hl(0, { name = 'PMenu' })
			vim.api.nvim_set_hl(0, 'LspSignatureActiveParameter', { fg = marked.fg, bg = marked.bg, bold = true })

			vim.cmd([[colorscheme catppuccin]])
		end
	},
	-- nice bar at the bottom
	{
		'itchyny/lightline.vim',
		lazy = false, -- also load at start since it's UI
		config = function()
			-- no need to also show mode in cmd line when we have bar
			vim.o.showmode = false
			vim.g.lightline = {
				colorscheme = 'catppuccin',
				active = {
					left = {
						{ 'mode', 'paste' },
						{ 'readonly', 'filename', 'modified' }
					},
					right = {
						{ 'lineinfo' },
						{ 'percent' },
						{ 'fileencoding', 'filetype' }
					},
				},
				component_function = {
					filename = 'LightlineFilename'
				},
			}
			function LightlineFilenameInLua(opts)
				if vim.fn.expand('%:t') == '' then
					return '[No Name]'
				else
					return vim.fn.getreg('%')
				end
			end
			-- https://github.com/itchyny/lightline.vim/issues/657
			vim.api.nvim_exec(
				[[
				function! g:LightlineFilename()
					return v:lua.LightlineFilenameInLua()
				endfunction
				]],
				true
			)
		end
	},
	-- quick navigation
	{
		'ggandor/leap.nvim',
		config = function()
			vim.keymap.set({'n', 'x', 'o'}, 's', '<Plug>(leap)')
			vim.keymap.set('n',             'S', '<Plug>(leap-from-window)')
			leap = require('leap')

			leap.opts.preview = function (ch0, ch1, ch2)
			  return not (
			    ch1:match('%s')
			    or (ch0:match('%a') and ch1:match('%a') and ch2:match('%a'))
			  )
			end
			leap.opts.equivalence_classes = {
			  ' \t\r\n', '([{', ')]}', '\'"`'
			}
			require('leap.user').set_repeat_keys('<enter>', '<backspace>')

		end
	},
	-- better %
	{
		'andymass/vim-matchup',
		config = function()
			vim.g.matchup_matchparen_offscreen = { method = "popup" }
		end
	},
	-- auto-cd to root of git project
	-- 'airblade/vim-rooter'
	{
		'notjedi/nvim-rooter.lua',
		config = function()
			require('nvim-rooter').setup()
		end
	},
	-- center the editor
	{
		"shortcuts/no-neck-pain.nvim",
		version = "*",
		opts = {
			mappings = {
				enabled = true,
				toggleLeftSide = false,
				toggleRightSide = false,
				widthUp = false,
				widthDown = false,
				scratchPad = false,
			}
		},
		config = function()
			vim.keymap.set('', '<leader>t', function()
				vim.cmd([[
					:NoNeckPain
					:set formatoptions-=tc linebreak tw=0 cc=0 wrap wm=20 noautoindent nocindent nosmartindent indentkeys=
				]])
				-- make 0, ^ and $ behave better in wrapped text
				vim.keymap.set('n', '0', 'g0')
				vim.keymap.set('n', '$', 'g$')
				vim.keymap.set('n', '^', 'g^')
			end)
		end
	},
	-- fzf support for ^p
	{
		'ibhagwan/fzf-lua',
		config = function()
			-- stop putting a giant window over my editor
			require("fzf-lua").setup{
				winopts = {
					split = "belowright 10new",
					preview = {
						hidden = true,
					}
				},
				files = {
					file_icons = false,
					git_icons = true,
					_fzf_nth_devicons = true,
				},
				buffers = {
					file_icons = false,
					git_icons = true,
					_fzf_nth_devicons = true,
				},
				fzf_opts = {
					["--layout"] = "default",
				},
				header = false,
			}
			vim.keymap.set('', '<C-p>', function()
				opts = {}
				opts.cmd = 'fd --color=never --hidden --type f --type l --exclude .git'
				local base = vim.fn.fnamemodify(vim.fn.expand('%'), ':h:.:S')
				if base ~= '.' then
					-- if there is no current file,
					-- proximity-sort can't do its thing
					opts.cmd = opts.cmd .. (" | proximity-sort %s"):format(vim.fn.shellescape(vim.fn.expand('%')))


				end
				opts.prompt = "> "
				opts.fzf_opts = {
				  ['--scheme']    = 'path',
				  ['--tiebreak']  = 'index',
				  ["--layout"]    = "default",
				}
				require'fzf-lua'.files(opts)
			end)
			-- use fzf to search buffers as well
			vim.keymap.set('n', '<leader>;', function()
				require'fzf-lua'.buffers({
					fzf_opts = {
					  ["--with-nth"]      = "-3,-2",
					  ["--nth"]           = "-1",
					  ["--delimiter"]     = "[:\u{2002}]",
					  ["--header-lines"]  = "false",
					}
				})
			end)
			
			vim.api.nvim_create_user_command('Rg', function(arg)
			  	local preview_window = arg.bang and 'up:60%' or 'right:50%:hidden'
			  	local source = string.format(
			  	    'rg --column --line-number --no-heading --color=always %s',
			  	    vim.fn.shellescape(arg.args)
			  	)
			  	vim.fn['fzf#vim#grep'](source, vim.fn['fzf#vim#with_preview'](preview_window), arg.bang)
			end, { nargs = '*', bang = true })
		end
	},
	-- LSP
	{
		'neovim/nvim-lspconfig',
		config = function()
			-- Setup language servers.
			local lsp = vim.lsp
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			local util = require "lspconfig/util"

			-- Rust
			lsp.config('rust_analyzer', {
				settings = {
					["rust-analyzer"] = {
						cargo = {
							allFeatures = true,
						},
						imports = {
							group = {
								enable = false,
							},
						},
						completion = {
							postfix = {
								enable = false,
							},
						},
					},
				},
			})

			-- Go
			lsp.config('gopls', {
			   cmd = {"gopls", "serve"},
			   capabilities = capabilities,
			   filetypes = {"go", "gomod"},
			   root_dir = util.root_pattern("go.work", "go.mod", ".git"),
			   settings = {
			     gopls = {
			       analyses = {
			         unusedparams = true,
			       },
			       staticcheck = true,
			     },
			   },
			 })

			-- deno config
			
			lsp.config('denols', {
			  root_dir = util.root_pattern("deno.json", "deno.jsonc"),
			  capabilites = capabilities,
			  filetypes = { "javascript",  "typescript"}
			})
			

			for _, lsp_val in pairs({'ts_ls', 'eslint'}) do
			  lsp.config(lsp_val, {
			    root_dir = function (filename)
			     local denoRootDir = util.root_pattern("deno.json", "deno.json")(filename);
			        if denoRootDir then
 			          return nil;
 			        end
 			      return util.root_pattern("package.json")(filename);
 			    end,
			    capabilites = capabilities,
			  })
			end


			-- Other stuffs
	
			lsp.config('astro', {
			  capabilites = capabilities,
			   init_options = {
			    typescript = {
			      tsdk = vim.fs.normalize('node_modules/typescript/lib')
			    }
			  },
			})
			


			local servers = {'jsonls', 'svelte', 'html', 'cssls', 'vuels'}
			for _, lsp_val in pairs(servers) do
			  lsp.config(lsp_val, {
			    capabilites = capabilities,
			  })
			end


		
			-- Bash LSP
			local configs = require 'lspconfig.configs'
			if not configs.bashls and vim.fn.executable('bash-language-server') == 1 then
				configs.bashls = {
					default_config = {
						cmd = { 'bash-language-server', 'start' },
						filetypes = { 'sh' },
						root_dir = util.find_git_ancestor,
					}
				}
			end
			if configs.bashls then
				lsp.config('bashls', {})
			end

			-- Ruff for Python
			if not configs.ruff and vim.fn.executable('ruff') == 1 then
				configs.ruff = {
					default_config = {
						cmd = { 'ruff', "server" },
						filetypes = { 'python' },
						root_dir = util.find_git_ancestor,
						init_options = {
							settings = {
								args = {}
							}
						}
					}
				}
			end
			if configs.ruff then
				lsp.config('ruff', {})
			end

			if not configs.pyright and vim.fn.executable('pyright') == 1 then
				configs.pyright = {
					default_config = {
						cmd = { 'pyright-langserver', "--stdio" },
						filetypes = { 'python' },
						root_dir = util.find_git_ancestor,
						settings = {
							settings = {
								pyright = {
								   -- Using Ruff's import organizer
   								   disableOrganizeImports = true,
   								 },
   								 python = {
   								   analysis = {
   								     -- Ignore all files for analysis to exclusively use Ruff for linting
   								     ignore = { '*' },
   								   },
   								 },
							}
						}
					}
				}
			end
			if configs.pyright then
				lsp.config('pyright', {})
			end

			-- texlab for LaTeX
			if vim.fn.executable('texlab') == 1 then
				vim.lsp.enable('texlab')
			end


			-- Global mappings.
			-- See `:help vim.diagnostic.*` for documentation on any of the below functions
			vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
			vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
			vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
			vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)
			vim.diagnostic.config({
			  virtual_text = true,
			  signs = true,
			  update_in_insert = true,
			})

			-- Custom mapping
			vim.keymap.set('n', '<leader>s', ':Rg', { noremap = true, silent = true })
			vim.keymap.set('n', '<leader>q', 'g<c-g>', { noremap = true, silent = true })

		
			-- Use LspAttach autocommand to only map the following keys
			-- after the language server attaches to the current buffer
			vim.api.nvim_create_autocmd('LspAttach', {
				group = vim.api.nvim_create_augroup('UserLspConfig', {}),
				callback = function(ev)
					-- Enable completion triggered by <c-x><c-o>
					vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

					-- Buffer local mappings.
					-- See `:help vim.lsp.*` for documentation on any of the below functions
					local opts = { buffer = ev.buf }
					vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
					vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
					vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
					vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
					vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
					vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
					vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
					vim.keymap.set('n', '<leader>wl', function()
						print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
					end, opts)
					--vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
					vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, opts)
					vim.keymap.set({ 'n', 'v' }, '<leader>a', vim.lsp.buf.code_action, opts)
					vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
					vim.keymap.set('n', '<leader>f', function()
						vim.lsp.buf.format { async = true }
					end, opts)

					local client = vim.lsp.get_client_by_id(ev.data.client_id)

					if client.server_capabilities.inlayHintProvider then
					    vim.lsp.inlay_hint(ev.buf, true)
					end

					-- None of this semantics tokens business.
					-- https://www.reddit.com/r/neovim/comments/143efmd/is_it_possible_to_disable_treesitter_completely/
					client.server_capabilities.semanticTokensProvider = nil
				end,
			})
		end
	},
	-- LSP-based code-completion
	{
		"hrsh7th/nvim-cmp",
		-- load cmp on InsertEnter
		event = "InsertEnter",
		-- these dependencies will only be loaded when cmp loads
		-- dependencies are always lazy-loaded unless specified otherwise
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
		},
		config = function()
			local cmp = require'cmp'
			cmp.setup({
				snippet = {
					-- REQUIRED by nvim-cmp. get rid of it once we can
					expand = function(args)
						vim.fn["vsnip#anonymous"](args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					['<C-b>'] = cmp.mapping.scroll_docs(-4),
					['<C-f>'] = cmp.mapping.scroll_docs(4),
					['<C-Space>'] = cmp.mapping.complete(),
					['<C-e>'] = cmp.mapping.abort(),
					-- Accept currently selected item.
					-- Set `select` to `false` to only confirm explicitly selected items.
					['<CR>'] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					{ name = 'nvim_lsp' },
				}, {
					{ name = 'path' },
				}),
				experimental = {
					ghost_text = true,
				},
			})

			-- Enable completing paths in :
			cmp.setup.cmdline(':', {
				sources = cmp.config.sources({
					{ name = 'path' }
				})
			})
		end
	},
	-- inline function signatures
	{
		"ray-x/lsp_signature.nvim",
		event = "VeryLazy",
		opts = {},
		config = function(_, opts)
			-- Get signatures (and _only_ signatures) when in argument lists.
			require "lsp_signature".setup({
				doc_lines = 0,
				handler_opts = {
					border = "none"
				},
			})
		end
	},
	-- language support
	-- terraform
	{
		'hashivim/vim-terraform',
		ft = { "terraform" },
	},
	-- toml
	{
	 	'cespare/vim-toml',
		ft = { "toml" },
	},
	-- yaml
	{
		"cuducos/yaml.nvim",
		ft = { "yaml" },
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
	},
	-- go
	{
		'fatih/vim-go',
		ft = { "go" },
		config = function()
			vim.g.go_play_open_browser = 0
			vim.g.go_fmt_fail_silently = 1
			vim.g.go_fmt_command = "goimports"
		end
	},

	-- fish
	{
		'khaveesh/vim-fish-syntax',
		ft = { "fish" },
	},
	-- markdown
	{
		'plasticboy/vim-markdown',
		ft = { "markdown" },
		dependencies = {
			'godlygeek/tabular',
		},
		config = function()
			-- never ever fold!
			vim.g.vim_markdown_folding_disabled = 1
			-- support front-matter in .md files
			vim.g.vim_markdown_frontmatter = 1
			-- 'o' on a list item should insert at same level
			vim.g.vim_markdown_new_list_item_indent = 0
			-- don't add bullets when wrapping:
			-- https://github.com/preservim/vim-markdown/issues/232
			vim.g.vim_markdown_auto_insert_bullets = 0
			-- typo
			vim.spell.spelllang = "en_us"

		end
	},
	{
		"lervag/vimtex",
		ft = { "tex" },
		lazy = true,
		init = function()
			vim.g.vimtex_view_method = "zathura"
			vim.g.vimtex_mappings_enabled = false
		end
	},
	-- Format tool
	{
		'sbdchd/neoformat',
		config = function()
			vim.g.neoformat_try_node_exe = 1
			vim.g.neoformat_try_formatprg = 1
			-- Enable tab to spaces conversion
			vim.g.neoformat_basic_format_retab = 1
			vim.g.neoformat_enabled_haskell = {'sortimports', 'stylishhaskell'}
			vim.api.nvim_create_augroup('fmt', { clear = true })
			vim.api.nvim_create_autocmd('BufWritePre', {
			  group = 'fmt',
			  pattern = '*',
			  callback = function()
			    if undo_history and #undo_history <= 1 then 
			      vim.cmd('undojoin') 
   			    end
			    vim.cmd('Neoformat')
			  end,
			})

		end
	},
	-- svelte
	{
		'leafOfTree/vim-svelte-plugin',
		ft = { "svelte" },
		config = function()
			vim.g.vim_svelte_plugin_use_sass = 1
		end
	},
	-- astro
	{
		'wuelnerdotexe/vim-astro',
		ft = { "astro" },
	},



})


