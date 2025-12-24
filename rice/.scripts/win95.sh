cd ~/Documents && cd VMs && qemu-system-i386 -hda win95.img -cdrom /dev/sr0 -boot d -cpu pentium -m 64 -vga cirrus -audio driver=alsa,model=sb16 -net nic,model=pcnet -net user -monitor stdio
