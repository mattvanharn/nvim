# My Neovim Configuration

This repository contains my personal Neovim configuration. It includes a variety of plugins and settings that enhance my productivity and coding experience.

## Installation

1. Clone this repository: `git clone https://github.com/mattvanharn/neovim-config.git ~/.config/nvim/`
2. Install the required plugins: `nvim --headless +LazyInstall +q`
3. Restart Neovim.

## Plugin Configuration

The configuration uses lazy.nvim for managing plugins. The plugins are organized in a modular fashion within the `lua/plugins` directory. Each plugin has its own Lua file in this directory. For instance, the `cmp.lua` file is responsible for configuring the `cmp` plugin, and the `comment.lua` file handles the `comment` plugin.

Additionally, there are some utility Lua files located in the `lua/util` directory. These files contain utility functions that are used across different parts of the configuration. For example, `icons.lua` might define some icon mappings, and `keymapper.lua` could contain key mapping definitions.

The `lazy.lua` file in the `lua/config` directory is where the lazy.nvim plugin manager is configured. This is where you specify the plugins you want to load lazily.

Finally, the `init.lua` file serves as the entry point for your Neovim configuration. It requires the necessary Lua files in the correct order to properly initialize your environment.

# My Neovim Configuration

Detailed descriptions of each file and directory in the Neovim configuration.

## NeoVim Root

- `init.lua`: The main entry point for the Neovim configuration, orchestrating the loading of Lua modules and plugins.
- `lazy-lock.json`: A lock file that ensures consistent versions of plugins are maintained across different setups.
- `neoconf.json`: A configuration file that may contain settings or metadata for Neovim tools or plugins.

## Config Directory (`lua/config`)

- `autocmds.lua`: Defines Neovim autocommands for automating tasks on file events.
- `globals.lua`: Establishes global variables for use across the entire Neovim configuration.
- `keymaps.lua`: Specifies custom key mappings to enhance user experience and workflow efficiency.
- `lazy.lua`: Manages the lazy-loading of plugins to optimize Neovim's startup time.
- `options.lua`: Configures Neovim settings such as editor behaviors, UI preferences, and other options.

## Plugins (`lua/plugins`)

- `animate.lua`: Animate common Neovim actions
- `autopairs.lua`: Manages the insertion of matching pairs (brackets, quotes) automatically during typing.
- `bufferline.lua`: Implements an enhanced buffer line for improved file navigation and management.
- `catppuccin.lua`: Activates the Catppuccin color scheme for a visually appealing coding environment.
- `cmp.lua`: Sets up the `nvim-cmp` plugin for intelligent and context-aware autocompletion.
- `comment.lua`: Enables efficient toggling of comments in code with keyboard shortcuts.
- `dashboard.lua`: Creates a custom Neovim dashboard for quick access to files and commands upon startup.
- `flash.lua`: Provides visual feedback by briefly highlighting text areas affected by edits.
- `fugitive.lua`: Integrates Git functionality within Neovim for version control operations.
- `gitsigns.lua`: Displays Git status information alongside line numbers in the gutter.
- `hardtime.lua`: Prevents repeated key presses, promoting more efficient movement commands.
- `harpoon.lua`: Facilitates quick navigation and bookmarking of frequently used files and code sections.
- `illuminate.lua`: Highlights occurrences of the word under the cursor across the open buffer.
- `indent-blankline.lua`: Displays visual indentation guides to enhance code readability.
- `init.lua`: Serves as the configuration entry point, loading plugin configuration files.
- `lspconfig.lua`: Provides setup for various language servers, enabling IDE-like features within Neovim.
- `lspsaga.lua`: Augments the built-in LSP functionality with improved user interface and additional features.
- `lualine.lua`: Customizes the Neovim status line for better information display and aesthetics.
- `mason-lspconfig.lua`: Integrates with the Mason package manager for straightforward LSP server management.
- `mason.lua`: Manages LSP servers, formatters, and linters for a wide range of languages.
- `noice.lua`: Enhances the user interface with customizable notifications and command-line messages.
- `surround.lua`: Offers convenient mappings for adding, removing, and altering surrounding characters or pairs.
- `telescope-fzf-native.lua`: Improves the performance of the Telescope fuzzy finder with native FZF sorting.
- `telescope.lua`: A modular and extensible fuzzy finder that interfaces with Neovim's built-in functions.
- `tmux-navigator.lua`: Enables seamless navigation between tmux panes and Neovim split windows.
- `tree.lua`: Provides a tree-style file explorer for intuitive file system browsing and management.
- `treesitter.lua`: Leverages Tree-sitter grammars for advanced code parsing and syntax highlighting.
- `web-devicons.lua`: Adds filetype-specific icons to Neovim, enhancing the visual experience.
- `which-key.lua`: Displays a helpful popup with keybinding options as the user types, aiding in command discovery.
- `yanky.lua`: Supplements the standard yank and paste operations with additional features like clipboard history.

## Utility Directory (`lua/util`)

- `buffer.lua`: Includes utility functions for buffer operations like opening, closing, and managing multiple buffers.
- `icons.lua`: Provides custom icons for enhancing the Neovim user interface in various contexts.
- `keymapper.lua`: Assists in defining key mappings more easily and consistently across the configuration.
- `lsp.lua`: Contains helper functions for configuring and managing the Language Server Protocol within Neovim.

## Acknowledgements

This configuration was heavily inspired by the work of [Radley Lewis](https://github.com/radleylewis), creator of "The Rad Lectures" YouTube channel. His [video](https://youtu.be/ZjMzBd1Dqz8?si=ONcE1OlDhbVkHk1j) on Neovim configuration served as a fundamental guide for this project.
