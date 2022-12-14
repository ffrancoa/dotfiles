# Dotfiles I

![terminal](/screenshots/terminal.png)

## 馃尰 [tilix](https://github.com/gnunn1/tilix)

### Instalaci贸n

~~~ console
sudo dnf install tilix
~~~

### Consideraciones Adicionales

Para a帽adir el tema **Gruvbox**, primero cambiar el nombre del tema actual a *Default*, luego mediante [Gogh](https://github.com/Gogh-Co/Gogh) ejecutar:

~~~ console
bash -c "$(wget -qO- https://git.io/vQgMr)"
~~~

Y escoger el n煤mero (72).

## 馃尰 [neofetch](https://github.com/dylanaraps/neofetch)

### Instalaci贸n

~~~ console
sudo dnf install neofetch
~~~

### Consideraciones Adicionales

Para variar los colores, jugar con el comando:

~~~ shell
alias nfetch="neofetch --ascii_colors 4 2"
~~~

## 馃尰 [fzf](https://github.com/junegunn/fzf)

### Instalaci贸n

~~~ console
sudo dnf install fzf
~~~

## 馃尰 [bat](https://github.com/sharkdp/bat)

### Instalaci贸n

~~~ console
sudo dnf install bat
~~~

### Consideraciones Adicionales

En el script `~/.bashrc` agregar el alias:

~~~ shell
alias bat="bat --theme=gruvbox-dark"
~~~

## 馃尰 [vim](https://github.com/vim/vim)

### Instalaci贸n

~~~ console
sudo dnf install vim-enhanced
~~~

### Consideraciones Adicionales

Para mayor comodidad agregar el alias a `~/.bashrc`.

~~~ shell
alias vi="vim"
~~~

## 馃尫 [pathogen.vim](https://github.com/tpope/vim-pathogen)

### Instalaci贸n

~~~ console
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
~~~

## 馃尫 [lightline.vim](https://github.com/itchyny/lightline.vim)

### Instalaci贸n

~~~ console
git clone https://github.com/itchyny/lightline.vim ~/.vim/bundle/lightline.vim
~~~

## 馃尰 [cmus](https://github.com/cmus/cmus)

### Instalaci贸n

~~~ console
sudo dnf install cmus
~~~

## 馃尰 [cava](https://github.com/karlstav/cava)

~~~ console
sudo dnf install alsa-lib-devel ncurses-devel fftw3-devel pulseaudio-libs-devel libtool
sudo dnf install cava
~~~

## 馃尰 [zathura](https://github.com/pwmt/zathura)

### Instalaci贸n

~~~ console
sudo dnf install zathura zathura-pdf-mupdf
~~~

## 馃尰 [rofi](https://github.com/davatorium/rofi)

### Instalaci贸n

~~~ console
sudo dnf rofi
~~~

> Culminado este proceso, copiar los archivos de la carpeta .config.