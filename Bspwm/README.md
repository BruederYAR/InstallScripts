# BSPWM

Bspwm is a minimalistic, fast and fairly configurable tile window manager that represents windows as layers of a binary tree. Multiple monitors are supported. It has a simple setup.

## Components

- bspwm - tile window manager.

- sxhkd - keyboard shortcut daemon for X.

- dmenu - dynamic menu for X.

- polybar - tool for creating status bars.

- picom - window composer for X.

- betterlockscreen - fast lockscreen with effects

## How to intall

Switch to a non-root user with superuser rights

Run the commands:

```bash
git clone https://github.com/BruederYAR/InstallScripts
cd InstallScripts/Bspwm/
chmod +x setup.sh
./setup.sh
```

Wait for the download to finish

## Shortcuts

| Shortcut | Action |
| ---------|--------|
| super + Return | Launching the terminal |
| super + b | Launching browser |
| super + Space | Launching dmenu | 
| super + F1 | Select main polybar |
| super + F2 | Select addittional polybar |
| control + shift + z | Lock Screen | 
| super + Escape | Restarting the sxhkd config |
| super + alt + {q,r} | Exit/Restart bspwm |
| super + {_,shift + }w | Close and kill the app |
| super + m | Switching to monocle mode and back to tile mode |
| super + y | Send the newest marked node to the newest pre-selected node |
| super + g | Swap the current node and the largest window |

### State and flags:

| Shortcut | Action |
| ---------|--------|
| super + f | Set window mode (focused, floating) |
| super + ctrl + {m,x,y,z} | Set node flag (marked,locked,sticky,private) |


### Focus and swap:

| Shortcut | Action |
| ---------|--------|
| super + {_,shift + }{h,j,k,l} | Focus the node in the given direction |
| super + {p,b,comma,period} | Focus the node for the given path jump |
| super + {_,shift + }c | Focus the next/previous window in the current desktop | 
| super + bracket{left,right} | Focus the next/previous desktop in the current monitor | 
| super + {grave,Tab} | Focus the last node/desktop | 
| super + {o,i} | Focus the older or newer node in the focus history |
| super + {_,shift + }{1-9,0} | Focus or send to the given desktop |


### Preselect

| Shortcut | Action |
| ---------|--------|
| super + ctrl + {h,j,k,l} | Preselect the direction |
| super + ctrl + {1-9} | Preselect the ratio |
| super + ctrl + space | Cancel the preselection for the focused node |
| super + ctrl + shift + space | Cancel the preselection for the focused desktop |


### Move and resize

| Shortcut | Action |
| ---------|--------|
| super + alt + {h,j,k,l} | Expand a window by moving one of its side outward |
| super + alt + shift + {h,j,k,l} | Contract a window by moving one of its side inward |
| super + {Left,Down,Up,Right} | Move a floating window |
