# anisay
 inspired by a fondness of cowsay, 
 an animated character speaks to you through the terminal!

 - multi-threaded ascii animation play back in the terminal via python
 
 - support for easily adding other ascii art animations
        
## Requirements:

- python 3

- pypi package: blessed ( `pip3 install blessed --user` )

- *nix based OS with a modern terminal and a $HOME/.config dir

- $PATH contains $HOME/.local/bin

## Installation:

To run clone the repo:

`git clone --depth=1 https://github.com/sealedjoy/anisay && cd anisay && chmod +x install.sh && ./install.sh` 

## Usage:
```
usage: anisay [-h] [-s SPEED] [-t TIMEOUT] [-c CHARACTER] String [String ...]
positional arguments:
  String                a space seperated, quoted string for each page
  
optional arguments:
  -h, --help            show this help message and exit
  
  -s SPEED, --speed SPEED
                        Speed at which text is printed to screen by axolotl. (Default: 0.005)

  -t TIMEOUT, --timeout TIMEOUT
                        Automatically end after a number of seconds

  -c CHARACTER, --character CHARACTER
                        Animated character to select (default: axolotl)
```
## Examples:

Run something like this:  
`anisay 'Not a lizard'`

Print stdout of command:  
`anisay "$(fortune)"`

Multiple pages of speech:  
`anisay 'Welcome to anisay!' 'You can display multiple pages...' 'by giving anisay multiple positional args, each page as a space seperated string argument `

### Keyboard:

`r` restart  
`n` next  
`q` quit  
 
 


