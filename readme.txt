=====================================================================

If you downloaded this pkg from Deken you are ready to go, if not keep reading.

To load the plugin place the "dnd-plugin" folder on Pd's search path, i.e your normal "externals" folder or the "extra" folder. You can put the folder at any other place and then add it to Pd's path.

The plugin needs a compiled version of "tkdnd" for your OS. See :

https://github.com/petasis/tkdnd

and also :

https://sourceforge.net/projects/tkdnd/

Rename your Os dnd-pkg folder to just "tkdnd" and place it inside the "dnd-plugin" folder.

Restart Pd.

You should see something like this printed to the console:

-
DND-Plugin 0.3
Drag and Drop on Pd window or patch canvas

See D:/pd_0.51/extra/dnd-plugin/dnd-plugin-help.pd
-

======================================================================
======================================================================



version history:

0.3.1

fix: a .pd file can be dropped onto a patch canvas but we also need to escape spaces in the filename here with a literal backslash, else the object can't be created.

======================================================================

0.3

fixes a bug where zero padded filenames with spaces would produce a wrong filename output
adds extra routing options for ascii encoded name, path, extension and full name of dropped file.

======================================================================

0.2

first release