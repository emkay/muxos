# muxos

Just a place for a toy OS built by going through: http://wiki.osdev.org/

## Getting Started

__THINGS WILL PROBABLY BREAK!!! CONTINUE AT YOUR OWN RISK!!!__

`prep.sh` will download gcc and binutils and create a cross-compiler for you.

`run.sh` will run qemu on the iso. you can run it in another emulator if you want.

### First time

```bash
./prep.sh
make install
./run.sh
```

### Making Changes
```bash
make install
./run.sh
```
