# muxos

Just a place for a toy OS built by going through: http://wiki.osdev.org/

## Getting Started

__THINGS WILL PROBABLY BREAK!!! CONTINUE AT YOUR OWN RISK!!!__

`prep.sh` will download gcc and binutils and create a cross-compiler for you.

`build.js` will compile, assemble, and link the code. Then it will run `grub-mkrescue` to create an iso that you can run in an emulator. If you don't have `grub-mkrescue` you can search on the internet on how to get it. For OSX you have to jump through some hoops, but it isn't too bad. I didn't include it in the prep script because I have to manually edit the configuration file to get it working.

`run.sh` will run qemu on the iso. you can run it in another emulator if you want.

### First time

```bash
./prep.sh
./build.sh
./run.sh
```

### Making Changes
```bash
./build.sh
./run.sh
```
