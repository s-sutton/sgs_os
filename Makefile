#These params are used because CPUs tend to start in 32-bit compatibility mode, so we are using x86 architecture rather than x64
#The fno options here tell the compiler not to assume that these features are already installed and to not try to link to them, because the kernel starts from scratch
GPPPARAMS = -m32 -fno-use-cxa-atexit -nostdlib -fnobuiltin -fno-rtti -fno-exceptions -fno-leading-underscore
ASPARAMS = --32
#The i386 was one of the first chips to use a 32-bit version of the x86 architecture, and melf is a reference to a Linux executable file format
LDPARAMS = -melf_i386

#This stores both object files into a single variable to be called by the linker
objects = loader.o kernel.o

#This creates an object file from a C++ file, using the g++ utility, $< is input file and $@ is output file
#The C++ script will contain most of the kernel code, hence why it's called "kernel"
%.o: %.cpp
  g++ $(GPPPARAMS) -o $@ -c $<

#This creates an object file from an Assembly script
#The assembly script is used to set the stack pointer so that C++ can run without crashing, since C++ ordinarily assumes that the stack pointer is already set, hence why it's called "loader"
%.o: %.s
  as $(ASPARAMS) -o $@ $<

#This combines the object files into a kernel binary using the ld utility
mykernel.bin: linker.ld $(objects)
  ld $(LDPARAMS) -T $< -o $@ $(objects)

#This literally just copies the binary to the boot directory. I don't fully understand how/why this is called by the next section.
install: mykernel.bin
  sudo cp $< /boot/mykernel.bin

#Creates iso and its directories. Also creates grub.cfg
#NOTE TO SELF: This might be important when starting LFS
mykernal.iso: mykernal.bin
  mkdir iso
  mkdir iso/boot
  mkdir iso/boot/grub
  cp $< iso/boot
  echo 'set timeout=0' >> iso/boot/grub/grub.cfg
  echo 'set default=0' >> iso/boot/grub/grub.cfg
  echo '' >> iso/boot/grub/grub.cfg
  echo 'menuentry "My Operating System" {' >> iso/boot/grub/grub.cfg
  echo '  multiboot /boot/mykernel.bin' >> iso/boot/grub/grub.cfg
  echo '  boot' >> iso/boot/grub/grub.cfg
  echo '}' >> iso/boot/grub/grub.cfg
  grub-mkrescue --output=$@ iso
#  rm -rf iso
