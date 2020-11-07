# apt-get
Extremely barebones wrapper for pacman to translate pacman commands to apt-get in arch based systems on the command line
## Compiling using GCC
```
gcc -o apt-get apt-get.m -lobjc -std=gnu99
```
## Install (while in directory of compiled binary)
```
sudo mv apt-get /usr/bin 
```
