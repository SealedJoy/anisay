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
usage: anisay [-h] [-i INPUT [INPUT ...]] [-a DIR] [-x COMMAND] [-r SECS]
              [-f SECS] [-s SECS] [-t SECS] [-c SECS] [-l] [--github]

optional arguments:
  -h, --help            show this help message and exit
  -d, --debug           show this debug help messages
  -i INPUT [INPUT ...], --input INPUT [INPUT ...]
                        space seperated, strings for each page
  -c DIR, --ascii DIR   ascii art/character folder to select (default:
                        octelpus) place in ~/.config/anisay/ascii
  -x COMMAND, --execute COMMAND
                        Executable to display std output from: (eg: fortune)
  -r SECS, --repeat SECS
                        Pause between running executable again whilst looping:
                        (default: 3)
  -f SECS, --framerate SECS
                        ascii art animation framerate {seconds} (Default: 0.17)
  -p SECS, --pause SECS
                        pause between each page {seconds} (Default: 1)
  -s SECS, --speed SECS
                        Text playback speed per symbol printed (Default: 0.005)
  -t SECS, --timeout SECS
                        Automatically exit after a number of seconds
  -c SECS, --clear SECS
                        Speed at which text is cleared from the screen
                        {seconds} (default: 0.0001)
  -l, --loop            
                        enable looping / continious playback
  -a, --auto            
                        enable automatic playback
  -gh, --github         
                        open the github page for the anisay project
  --nofx                      
                        don't display text effects

```
## Examples:

Run something like this:  
`anisay -c axolotl -i 'Not a lizard'`

Print stdout of command:  
`anisay --execute=fortune`

Continously display fortunes:  
`anisay --loop --execute=fortune`

Multiple pages of speech:  
`anisay -i 'With anisay you can display multiple pages of text' 'simply by giving anisay multiple args' 'each page as a space seperated string argument'`

### Keyboard:

`r` restart  
`n` next  
`p` previous
`q` quit  
 
 


