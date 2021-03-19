#
# Tcl package index file
#
#[ catch {package ifneeded tkdnd 2.8 \
#  "source \{$dir/tkdnd.tcl\} ; \
#   tkdnd::initialise \{$dir\} libtkdnd2.8.dylib tkdnd"
#   } ]


	set arch $::tcl_platform(pointerSize)
	switch -- $arch {
		4 { set arch x32  }
		8 { set arch x64 }
		default { error "extrafont: Unsupported architecture: Unexpected pointer-size $arch!!! "}
	}



package ifneeded tkdnd 2.9 \
  "source \{$dir/tkdnd.tcl\} ; \
   tkdnd::initialise \{$dir/$arch\} tkdnd29.dll tkdnd"  
   

  
	
#package ifneeded tkdnd 2.9 \
  "source \{$dir/tkdnd.tcl\} ; \
   tkdnd::initialise \{$dir\} tkdnd2964.dll tkdnd" 
   




