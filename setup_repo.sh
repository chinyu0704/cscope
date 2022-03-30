#!/bin/sh

find . -name "*.[chxsS]" -print > cscope.files

#The -b flag tells Cscope to just build the database, and not launch the Cscope GUI. The -q causes an additional, 'inverted index' file to be created, which makes searches run much faster for large databases. Finally, -k sets Cscope's 'kernel' mode--it will not look in /usr/include for any header files that are #included in your source files (this is mainly useful when you are using Cscope with operating system and/or C library source code, as we are here).
cscope -b -q -k
ctags -R
