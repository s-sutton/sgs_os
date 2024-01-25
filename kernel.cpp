void kernelMain(void* multiboot_structure, unsigned int magicnumber, ) //Accepts the multiboot_structure from the Assembly file as an argument, and also the magicnumber for... some reason?
{
  printf("Hewwo wowld owo");

  while(1); //This puts the program into an infinite loop to prevent the kernel from stopping. This... seems terrible. I'll have to modify it later, maybe if/when I rewrite this in C.
}
