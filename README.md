# ponykata-2020-01

## Installer Ponylang
Gjør [sånn](https://github.com/ponylang/ponyc/blob/master/INSTALL.md). Det tar _veldig_ lang tid på en gammel mac.

## Editors
### Visual Studio Code
Plugin: https://github.com/gbtb/vscode-ponylang gjør at man kan kjøre tasks (via .vscode/tasks.json). Også støtte for farger.
Mulig det kan være en fordel å kjøre vscode i [WSL](https://code.visualstudio.com/docs/remote/wsl ) om man bruker windows. WSL kjennes i alle fall raskere.

For å installere ponyc i WSL kan man gjøre sånn:
```bash
 sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E04F0923 B3B48BDA
 sudo add-apt-repository "deb https://dl.bintray.com/pony-language/ponylang-debian  $(lsb_release -cs) main"
 sudo apt-get -V install ponyc
 ```

## Testing
[info](https://stdlib.ponylang.org/ponytest--index/) om testing
