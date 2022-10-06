# Dotfiles I

![terminal](/screenshots/terminal.png)

## 🌻 [tilix](https://github.com/gnunn1/tilix)

### Instalación

~~~ console
sudo dnf install tilix
~~~

### Consideraciones Adicionales

Para añadir el tema **Gruvbox**, primero cambiar el nombre del tema actual a *Default*, luego mediante [Gogh](https://github.com/Gogh-Co/Gogh) ejecutar:

~~~ console
bash -c "$(wget -qO- https://git.io/vQgMr)"
~~~

Y escoger el número (72).

## 🌻 [neofetch](https://github.com/dylanaraps/neofetch)

### Instalación

~~~ console
sudo dnf install neofetch
~~~

### Consideraciones Adicionales

Para variar los colores, jugar con el comando:

~~~ shell
alias nfetch="neofetch --ascii_colors 4 2"
~~~

## 🌻 [fzf](https://github.com/junegunn/fzf)

### Instalación

~~~ console
sudo dnf install fzf
~~~

## 🌻 [bat](https://github.com/sharkdp/bat)

### Instalación

~~~ console
sudo dnf install bat
~~~

### Consideraciones Adicionales

En el script `~/.bashrc` agregar el alias:

~~~ shell
alias bat="bat --theme=gruvbox-dark"
~~~

## 🌻 [vim](https://github.com/vim/vim)

### Instalación

~~~ console
sudo dnf install vim-enhanced
~~~

### Consideraciones Adicionales

Para mayor comodidad agregar el alias a `~/.bashrc`.

~~~ shell
alias vi="vim"
~~~

## 🌷 [pathogen.vim](https://github.com/tpope/vim-pathogen)

### Instalación

~~~ console
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
~~~

## 🌷 [lightline.vim](https://github.com/itchyny/lightline.vim)

### Instalación

~~~ console
git clone https://github.com/itchyny/lightline.vim ~/.vim/bundle/lightline.vim
~~~

## 🌻 [cmus](https://github.com/cmus/cmus)

### Instalación

~~~ console
sudo dnf install cmus
~~~

## 🌻 [cava](https://github.com/karlstav/cava)

~~~ console
sudo dnf install alsa-lib-devel ncurses-devel fftw3-devel pulseaudio-libs-devel libtool
sudo dnf install cava
~~~

## 🌻 [zathura](https://github.com/pwmt/zathura)

### Instalación

~~~ console
sudo dnf install zathura zathura-pdf-mupdf
~~~

## 🌻 [rofi](https://github.com/davatorium/rofi)

### Instalación

~~~ console
sudo dnf rofi
~~~

> Culminado este proceso, copiar los archivos de la carpeta .config.