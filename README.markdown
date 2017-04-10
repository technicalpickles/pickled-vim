# pickled-vim

These are the vim configurations I'm using. I'll try to comment as much as I can about what's going on, but your mileage may vary.

## Principals

* optimize for macOS and MacVim, but work with regular vim on macOS and elsewhere
* optimize for Ruby, Python, Javascript, and shell development
* try to balance minimalism and full featured but bloated
* keep reasonably up-to-date
* mimic common idioms/commands/behaviors from other editors when they are useful
  * ie command-t for fuzzy finding in TextMate and Atom
* lay the groundwork for maybe switching to neovim someday

## Installation

This repository uses [scripts to rule them all](https://github.com/github/scripts-to-rule-them-all). To setup:

    script/setup

If you are on macOS, you are done. If you are on another platform, you'll need to figure out how to install the following:

Fonts (only needed for gui):

- [Source Code Pro](https://github.com/adobe-fonts/source-code-pro)

Dependencies:

- [the_silver_searcher](https://geoff.greer.fm/ag/)

### Updating

Just run `script/setup` again, which would pull down any new dependencies.

## Usage

Just vim as usual, more or less.

### Filetype specific features

I use syntastic for a few filetypes, which depend on external checkers. Different projects will use different versions of languages and tools (ie with rbenv, nodenv, etc), so sometimes the current project won't have those. To fix missing checkers, I have some helper scripts. Call them from your current directory where you are missing checkers

* coffeescript: `path/to/pickled-vim/script/bootstrap-coffee`
* python: `path/to/pickled-vim/script/bootstrap-python`

### Neovim

Depending on your current python or ruby, you may need to reinstall some packages. Similar to above:

   path/to/pickled-vim/script/bootstrap-neovim

After that `:checkHealth` should confirm everything clear.
