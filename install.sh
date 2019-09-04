#!/bin/bash

pkgdir="/"


git clone https://github.com/Chrysostomus/manjaro-zsh-config.git
cd manjaro-zsh-config
	install -D -m644 .zshrc ${pkgdir}/etc/skel/.zshrc
	install -D -m644 rootzshrc ${pkgdir}/root/.zshrc
	
	mkdir -p $pkgdir/usr/share/zsh/scripts
	
	cp -r base16-shell $pkgdir/usr/share/zsh/scripts
	chmod a+x $pkgdir/usr/share/zsh/scripts/base16-shell/*

#'zsh-autosuggestions'
git clone https://github.com/zsh-users/zsh-autosuggestions /usr/share/zsh/plugins/zsh-autosuggestions
#/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

#'zsh-syntax-highlighting'
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
cd zsh-syntax-highlighting
mv /usr/local/share/zsh-syntax-highlighting /usr/share/zsh/plugins/zsh-syntax-highlighting
make install
cd ..


#'zsh-completions'
git clone git://github.com/zsh-users/zsh-completions.git /usr/share/zsh/plugins/zsh-completions
#echo fpath=(/usr/share/zsh/plugins/zsh-completions/src $fpath) >> ~.zshrc
	
#'zsh-history-substring-search'
git clone https://github.com/zsh-users/zsh-history-substring-search.git /usr/share/zsh/plugins/zsh-history-substring-search
	
