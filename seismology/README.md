# Dotfiles: Software de Sismología

## 💻 GMT

GMT requiere que previamente a su instalación tengamos listos los compiladores de los binarios que componen la herramienta, para ello ejecutamos:

~~~bash
sudo dnf install gfortran gcc g++
~~~

Adicionalmente, necesitamos los paquetes de desarrollo incluídos en `libX11`, para lo cual realizamos la búsqueda mediante:

~~~bash
dnf search libx11
~~~

Y descargamos el paquete compatible con nuestro sistema (x64); en este caso:

~~~bash
sudo dnf install libX11-devel.x86_64 libX11-xcb.x86_64
~~~

El nombre de los últimos varían según la distribución (Debian, Arch, etc).

Finalmente, instalamos la herramienta:

~~~bash
sudo dnf install gmt
~~~

Verificamos que la instalación se haya completado correctamente mediante el comando:

~~~bash
gmt --help
~~~

## 💻 SEISAN

Descargamos el comprimido del [sitio web oficial de SEISAN](https://www.geo.uib.no/seismo/SOFTWARE/SEISAN/), escogiendo en este caso el de nombre `seisan_v12.0_linux_64.tar.gz`.

El archivo descargado lo movemos a la carpeta `seismo` dentro de la ubicación de binarios de nuestro usuario. Esto es, una vez descargado el archivo ejecutamos:

~~~bash
mkdir -p ~/.local/bin/seismo

cd ~/.local/bin/seismo

cp ~/Downloads/seisan_v12.0_linux_64.tar.gz .
~~~

Seguidamente, aprovechando que nos ubicamos en dicha ruta, descomprimimos el archivo:

~~~bash
tar -xvzf seisan_v12.0_linux_64.tar.gz 
~~~

Es buena idea aprovechar en [leer el manual](https://www.geo.uib.no/seismo/SOFTWARE/SEISAN/seisan-tutorial.pdf) a fin de saber qué contiene cada una de las carpetas.

Con nuestro editor de preferencia (GEDIT, NANO, VIM, etc) abrimos el archivo `SEISAN.bash` ubicado en la carpeta `COM`. Dentro del mismo cambiamos la línea:

~~~bash
export SEISAN_TOP="/home/s2000/seismo"
~~~

Por:

~~~bash
# En la siguiente linea <nombre_de_usuario> debe ser reemplazado por el username.
# Para conocer el username, se puede ejecutar el comando "whoami"
export SEISAN_TOP="/home/<nombre_de_usuario>/.local/bin/seismo"
~~~

Ahora queda indicar que SEISAN inicie junto con nuestro sistema; para ello, nuevamente con nuestro editor de texto preferido, abrimos nuestro archivo `.bashrc`.

Por ejemplo, para abrirlo con GEDIT, haríamos:

~~~bash
gedit ~/.bashrc
~~~

Dentro del archivo, agregamos la línea:

~~~bash
. ~/.local/bin/seismo/COM/SEISAN.bash
~~~

Esto hace que, al iniciar el sistema operativo, se inicie también el archivo `SEISAN.bash`. Finalmente, queda compilar SEISAN, para ello nos ubicamos a la carpeta `PRO`mediante el comando:

~~~bash
pr
~~~

Comando que nos llevará a la carpeta `seismo/PRO`. Dentro, ejecutamos:

~~~bash
make clean
make all
~~~

Compilando las librerías necesarias y, con ello, culminando la instalación. Para verificar ejecutamos el comando:

~~~bash
eev
~~~
