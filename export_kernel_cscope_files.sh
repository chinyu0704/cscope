#!/bin/sh
#-path "$LNX/include/asm-*" ! -path "$LNX/include/asm-i386*" -prune -o \

LNX=/home/qy/linux
cd / 	
find  $LNX                                                                \
	-path "$LNX/arch/*" ! -path "$LNX/arch/arm64*" ! -path "$LNX/arch/x86*" -prune -o               \
	-path "$LNX/Documentation*" -prune -o                                 \
	-path "$LNX/scripts*" -prune -o                                       \
	-path "$LNX/drivers*" -prune -o                                       \
	-path "$LNX/certs*" -prune -o                                       \
	-path "$LNX/crypto*" -prune -o                                       \
	-path "$LNX/firmware*" -prune -o                                       \
	-path "$LNX/samples*" -prune -o                                       \
	-path "$LNX/tools*" -prune -o                                       \
	-path "$LNX/sound*" -prune -o                                       \
	-path "$LNX/virt*" -prune -o                                       \
	-path "$LNX/scripts*" -prune -o                                       \
	-path "$LNX/LISENCE*" -prune -o                                       \
	-path "$LNX/usr*" -prune -o                                       \
	-name "*.[chxsS]" -print > $LNX/cscope.files

cd $LNX
#The -b flag tells Cscope to just build the database, and not launch the Cscope GUI. The -q causes an additional, 'inverted index' file to be created, which makes searches run much faster for large databases. Finally, -k sets Cscope's 'kernel' mode--it will not look in /usr/include for any header files that are #included in your source files (this is mainly useful when you are using Cscope with operating system and/or C library source code, as we are here).
cscope -b -q -k
cd -
