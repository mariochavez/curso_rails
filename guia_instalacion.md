# Guias de instalación de Ruby on Rails
 
## Windows
Para contar con una instalación de Ruby on Rails en Windows, necesitamos descargar el Rails Installer de http://railsinstaller.org/.

Una vez descargado el instalador lo ejecutamos. Al final del mismo nos preguntara si deseamos configurar Git y SSH, nos aseguramos que la casilla este selecciona y presionamos el boton de finish.

Una ventana de MS-DOS se abrirá, como primer dato nos pedirá nuestro nombre, después nos pedirá nuestro correo electrónico, al presionar "Enter" después de ingresarlo, nos mostrara un texto con la información que acabamos de ingresar, las versiones de las librerías y frameworks que se instalaron, así como la información de la llave SSH - ver mas a detalle abajo, porque ocupamos esta llave SSH - que se genero para nosotros.

Como vamos a hacer uso extenso de la consola de MS-DOS y la que nos proporciona Windows deja mucho que desear, vamos a reemplazarla por un programa llamado Console2, el cual podemos descargar de http://sourceforge.net/projects/console/. Simplemente descomprimimos el archivo y copiamos la carpeta Console2 a nuestra carpeta de Aplicaciones en Windows. Seria muy útil ademas crear un acceso directo al ejecutable Console.exe

## Linux
Para los usuarios de Linux, es necesario instalar primeramente el paquete de Git desde el administrador de paquetes. La guía se base en Ubuntu, si usas otra distribución solo adapta los comandos.

Abrimos una terminal, y para instalar git ejecutamos - ademas aprovechamos para instalar algunos otros paquetes que vamos a necesitar mas tarde -:

    sudo apt-get install git zlib1g zlib1g-dev sqlite3  libsqlite3-dev

Nos pedirá nuestro password y que confirmemos la instalación. Como siguiente paso instalamos rbenv que nos ayudara a que la instalación de Ruby On Rails sea sencilla.

    cd ~
    git clone https://github.com/sstephenson/rbenv ~/.rbenv

Ahora procedemos a configurar rbenv en nuestro ambiente con los siguientes comandos:

    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(rbenv init -)"' >> ~/.bashrc
    exec #SHELL

A continuación instalamos ruby-build que nos ayudara a descargar e instalar la version de Ruby que vamos a usar.

    git clone https://github.com/sstephenson/ruby-build
    cd ruby-build
    sudo ./install.sh
    cd ~

Ahora si estamos listos para instalar Ruby, esto lo hacemos con los comandos - este paso puede tardar varios minutos -:

    rbenv install 1.9.3-p194
    rbenv global 1.9.3-p194
 
Como paso final instalamos Ruby On Rails y esto lo hacemos de la siguiente forma:

    gem install bundler rails sqlite3-ruby execjs therubyracer
    rbenv rehash

En este punto ya debemos de tener una instalación de Ruby On Rails funcional

## OSX
En OSX es necesario tener instalas las herramientas de desarrollo de Apple, que en este caso es XCode http://itunes.apple.com/us/app/xcode/id448457090

Antes de instalar Ruby On Rails, instalaremos Brew. Brew es una herramienta que nos ayuda a instalar de manera facil librerías adicional que podamos necesitar.

Para instalar Brew abrimos una terminal y ejecutamos:

    /usr/bin/ruby -e "$(/usr/bin/curl -fsSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"

Una vez que Brew termine de instalar, es necesario instalar Git, para lo cual ejecutamos:

    brew install git sqlite3

Ahora procedemos a instalar rbenv que nos ayudara en OSX a contar con una instalación de Ruby On Rails de forma sencilla, ejecutamos:

    cd ~
    git clone https://github.com/sstephenson/rbenv ~/.rbenv
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
    echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
    exec #SHELL

Después instalamos ruby-build para descargar y compilar la versión de Ruby mas reciente - en este punto OSX nos va a pedir nuestra clave -:

    git clone https://github.com/sstephenson/ruby-build
    cd ruby-build
    sudo ./install.sh
    cd ~

Continuamos con nuestra instalación de Ruby de la siguiente forma - este paso puede durar varios minutos -:

    rbenv install 1.9.3-p194
    rbenv global 1.9.3-p194

Después de este punto ya podemos proceder a instalar Ruby On Rails, para lo cual ejecutamos:

    gem install bundler rails sqlite3-ruby
    rbenv rehash

Y listo, nuestro ambiente ya esta configurado para Ruby On Rails.

## Configuración de Git para usuarios Linux y OSX
Este paso no es necesario para los usuarios de Windows, ya que el instalador se encargo de realizarlo.

Hay que abrir una terminal y en ejecutamos, durante la ejecución del 3er comando nos pedirá como parámetro el mismo correo electrónico que usamos con el comando 2, ademas de pedirnos que indiquemos una clave:

    git config --global user.name "Mi nombre completo"
    git config --global user.email "mi correo"
    ssh-keygen -t rsa -C "mi correo"

## El editor para trabajar
Para trabajar con Ruby On Rails no hay una IDE o un editor oficial. Entre los desarrolladores de OSX TextMate fue por mucho tiempo el editor de facto, recientemente es muy común que trabajen en VIM.

Para este curso se utilizará Sublime Text 2 http://www.sublimetext.com/2 principalmente porque es multiplataforma.