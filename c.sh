sdasz80 -ls -o $1.o $1.asm
deno -A makerel.js $1
sdld -nf $1.rel
#deno -A ihex2bin.js $1.ihx $1.rom
deno -A https://code4fukui.github.io/IHEX/ihex2bin.js $1.ihx $1.rom
#openmsx -machine C-BIOS_MSX2_JP -cart $1.rom
deno --allow-read --allow-import https://ichigojam.github.io/MIX/rom2sh.js $1.rom | sh
