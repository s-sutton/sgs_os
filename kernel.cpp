//This below function is terrible, maybe replace it with the one from the OSDev wiki, with modification.
void printf(char* str) //accepts a a string of characters, this is a custom-made printf to avoid library linking since the library is not bundled with the kernel, but this creats a compilation error
{
  unsigned short* VideoMemory = (unsigned short*)0xb8000; //defines the address for VideoMemory, which is where the display array for the screen begins

  for (int i=0; str[i] != '\0'; ++i) //creates a loop that ends at the null byte, essentially going through a string one character at a time, I think?
    VideoMemory[i] = (VideoMemory[i] & 0xFF00) | str[i]; //sends the string to the screen, uses the high byte for white text on black background, although this seems like the wrong format?
}


typedef void (*constructor)(); //sets the constructors to be initialized
//Extern "C" tells the compiler to not change the name of this function, that way it can be referenced by the Assembly code
extern "C" constructor start_ctors; //essentially signalling the beginning of a space that can be copied to by the linker
extern "C" constructor end_ctors;
extern "C" void callConstructors() //calls and initializes all of the data written within the space between start_ctors and end_ctors
{
  for(constructor* i = &start_ctors; i != &end_ctors; i++)
    (*i)();
}

extern "C" void kernelMain(void* multiboot_structure, unsigned int magicnumber) //Accepts the multiboot_structure from the Assembly file as an argument, and also the magicnumber for... some reason?
{
  printf("Hewwo wowld owo");

  while(1); //This puts the program into an infinite loop to prevent the kernel from stopping. This... seems terrible. I'll have to modify it later, maybe if/when I rewrite this in C.
}
