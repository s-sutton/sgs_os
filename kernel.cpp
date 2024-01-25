//This below function is terrible, maybe replace it with the one from the OSDev wiki, with modification.
//I'm tempted to just do this in Assembly because it's simpler, to be honest, but that would negate the point of having this kernel here in a .cpp file
//Honestly, I'm thinking of writing the kernel in another language, anyway, because I'm more of a fan of C and Rust, but we'll go with C++ for now as it's WYOOS's recommendation
void printf(char* str) //accepts a a string of characters, this is a custom-made printf to avoid library linking since the library is not bundled with the kernel, but this creats a compilation error
{
  unsigned short* VideoMemory = (unsigned short*)0xb8000; //defines the address for VideoMemory, which is where the display array for the screen begins

  for (int i=0; str[i] != '\0'; ++i) //creates a loop that ends at the null byte, essentially going through a string one character at a time, I think?
    VideoMemory[i] = (VideoMemory[i] & 0xFF00) | str[i]; //sends the string to the screen, uses the high byte for white text on black background, although this seems like the wrong format?
}

void kernelMain(void* multiboot_structure, unsigned int magicnumber, ) //Accepts the multiboot_structure from the Assembly file as an argument, and also the magicnumber for... some reason?
{
  printf("Hewwo wowld owo");

  while(1); //This puts the program into an infinite loop to prevent the kernel from stopping. This... seems terrible. I'll have to modify it later, maybe if/when I rewrite this in C.
}
