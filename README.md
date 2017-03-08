Martin's server dotfiles
========================

My Debian Jessie dotfiles for servers. For a minimal desktop or laptop configuration, use https://github.com/paps/dotfiles

### Packages

* Install: `htop vim git zsh tree curl inotify-tools trash-cli wget dnsutils apache2-utils tig zip unzip`

### Tmux from backports for v2+

* Make sure Jessie backports are enabled in `/etc/apt/sources.list`. For example:
	* `deb http://deb.debian.org/debian jessie-backports main`
* Install `tmux` from the backports:
	* `sudo apt-get -t jessie-backports install tmux`

### SSH

* Add the correct keys to `~/.ssh/authorized_keys`

### Install the dotfiles

* `git clone https://github.com/paps/dotfiles-server.git`
* `cd dotfiles-server`
* Create all the required links: `./setup.sh [absolute-path-to-dotfiles]`

### Shell

* `whereis zsh`
* `chsh -s [absolute-path-to-shell]`
* Or, in case we're non-root with a disabled password: `sudo chsh -s [absolute-path-to-shell] username`

### Local binaries

Add local binaries in `~/.paps/bin` (it's in $PATH).

### Vim

* Only once, before first run: `git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`
* Only once, to initialize plugins: `vim -u ~/.paps/vim/bundles.vim +PluginInstall`
* For updating installed plugins: `vim +PluginUpdate`
* For installing a new plugin added in `bundles.vim`: `vim +PluginInstall`
* For removing unused plugins: `vim +PluginClean`

### Disable SSH agent

Because you're on a server, you might want to disable the local SSH agent that is automatically started by zsh to let your agent forwarding take place. To do so, simply `touch ~/.paps/zsh/do_not_start_ssh_agent`.
