# pd-dnd-plugin
drag and drop gui plugin for puredata mac osx

this works on osx. it was compiled for 64-bit only so should work with pd 0.48 since new tk is 8.5 (i think). 

todo
build instructions
libtkdnd as git submodule?


## Building on Windows with Msys2

Download the 64-bit installer from:

https://www.msys2.org/

Follow installation instructions on: https://github.com/msys2/msys2/wiki/MSYS2-installation

Add with `pacman` these packages:

`pacman -S make pkgconfig autoconf automake libtool`

Then the 32-bit compiler:

`pacman -S mingw32/mingw-w64-i686-gcc `

and the 32-bit tcl/tk pkgs:

`pacman -S mingw32/mingw-w64-i686-tcl`
 
`pacman -S mingw32/mingw-w64-i686-tk` 

### Optional for 64-bit (this is for Pds with 64-bit tcl/tk)

The 64-bit compiler:

`pacman -S mingw64/mingw-w64-x86_64-gcc`

and the 64-bit tcl/tk pkgs:

`pacman -S mingw64/mingw-w64-x86_64-tcl` 

`pacman -S mingw64/mingw-w64-x86_64-tk`


## Get tkdnd

Clone or download:
https://github.com/petasis/tkdnd.git

## Build tkdnd

Open the MinGW32 shell and do (for 64-bit open the MinGW64 shell):

`cd full/path/to/tkdnd`

`./configure`

`make`

You have built these 2 files:

`tkdnd29.dll`

`pkgIndex.tcl`

copy them to the `"pd-dnd-plugin/tkdnd"` folder.

## Load the GUI plug-in on Pd

Copy the `pd-dnd-plugin`folder on your prefered externals folder and add the path. It should load when you start Pd.