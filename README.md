# BUSCAR UN COMANDO EN EL HISTORIAL DE BASH
El siguiente script es útil cuando no recordamos la orden completa (con todos sus argumentos y/o flags) que hemos ejecutado en el pasado, pues poniendo parte de ésta (lo que recordemos) busca en el historial de comandos y nos permite ejecutarla.

# SEARCH AND EXECUTE A FORGOTTEN COMMAND (English)
This script is useful when we do not remember the whole command (w/ arguments/flags/options) we have executed in the past. You just have to introduce the part of the command that you remember, then the script looks for it in your bash_history and allow you to execute it again.

### You can see the whole script in this folder, but the magic happens here:
```sh
cd $HOME
cat .bash_history | grep "<here_the_part_of_the_order_you_remember>" | uniq
```
### How it works:

[GIF](https://gfycat.com/AmpleInferiorBinturong)
