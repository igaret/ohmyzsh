#!/data/data/com.termux/files/usr/bin/sh
cd $TMPDIR
git clone https://github.com/igaret/termux_stuff
cp -r $TMPDIR/termux_stuff/termux_rish/* $PREFIX/
chmod a+x $PREFIX/bin/*
cd ~
rm -rf $TNPDIR/termux_stuff
