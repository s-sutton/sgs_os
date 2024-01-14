# sgs_os
This is a modifiable showcase. It is not meant for practical use.

<h2>Project Overview</h2>

This is a project that aims to supplement an Arch and Nix-influenced [Linux From Scratch](https://www.linuxfromscratch.org/lfs/read.html) with [Write Your Own Operating System](https://youtube.com/playlist?list=PLHh55M_Kq4OApWScZyPl5HhgsTJS9MZ6M&feature=shared) in order to go more in-depth into the kernel, which is only briefly covered in section 10 of LFS. For the sake of starting lower and building up, I will be starting with WYOOS and then moving on to LFS to fill in the gaps.

There are some limitations to this approach. For instance, with WYOOS+LFS alone, there is no custom bootloader so it still cannot be said to be a complete OS. LFS mostly focuses on utilities and can be helpful for creating Linux distros, but creating a Linux-compatible OS from scratch means essentially writing an entire kernel.

I do intend to write a simple Unix-like kernel from scratch, but it will obviously not be good enough to compete with Linux, FreeBSD, or Selaris, nor is that the intention. The point is more to have a self-contained OS where I handwrote the most foundational code so that I might gain a more intimate understanding of the very foundations of practical computing. WYOOS+LFS simply gives me a baseline and will hopefully help the end product be compatible with Linux programs.

Then (or perhaps during) I would like to write my own compilers in an instruction set architecture like x86, at least simple ones that are hopefully enough to compile everything here. I'm not sure if I will get to this or not, to be honest with you, and it might be more of a stretch than the custom bootloader. This will be a separate, complementary project if/when it happens.

In the very long-term, I would like to be able to run this on custom hardware, too, and by that I mean more "arduinos and breadboards" than "gaming PC." Hardware is not a serious interest of mine, however, and I'm not sure that anything will come from this. If I do get to that point, then I might modify the code here to be more conducive to flashing the image onto that kind of architecture. It would be neat to be able to run the OS on anything from a programmable calculator to the screen display of a smart microwave, but I don't know how feasible this is yet. My current concern is that the .iso might be too large.

This is a large project, but it essentially consists of multiple, smaller projects. It simply gives me a general guideline to learn systems programming on my own. In fact, my approach to this project is less like an actual development process and more like a home-grown series of college courses that build on one another. The result of my endeavor would be kind of like a doctoral thesis, where I've shown my cumulative experience through a single project. To me, this is more efficient than getting a compsci degree, because it goes more in-depth into the material I'm interested in and doesn't waste as much time with, for example, artificial intelligence, which I do not have any interest in learning at all.

I have worked on large-scale long-term projects like this in the past. I have published a few books under a pseudonym, for instance, and each one took a few years to finish. I recently stopped working on my current book that I've been writing for 3 years now, partially in order to focus on this. This is going to be my new focus for awhile, and I already know that I have the discipline and commitment to continue working on it indefinitely, if that is what I eventually decide to do.

Right now, I am only committed to combining WYOOS with LFS. This project is also done in my free time, so consistent updates might not be possible since this is one of my lowest priorities.

<h2>Timeline</h2>

This is a rough outline and subject to revision.

1. [Write Your Own Operating System](https://youtube.com/playlist?list=PLHh55M_Kq4OApWScZyPl5HhgsTJS9MZ6M&feature=shared)
2. [Linux From Scratch](https://www.linuxfromscratch.org/lfs/read.html) (+ Arch/Nix Utils)
3. Bootloader (maybe)
4. "Other kernel stuff" (I will define this in better detail if/when I get there)

The .iso will also be deployed in this repo, mostly for my own convenience and as a formality.

<h2>How to Use</h2>

This is where I would put my instructions for how to run the operating system, if I had any. Check back later.

<h2>Additional Notes</h2>

If you're just some random dev that has somehow stumbled onto this hobby project, you are free to fork it at any time to build off of. I have no idea why you would want to do that, but you don't need my permission to use my code or whatever weird solutions I come up with for the problems that I encounter while developing this.

In this project's later stages, I would like to design it to be, essentially, an easily-modifiable starting point for other people to build their own complete operating systems from. In other words, I'd like to build off of LFS and WYOOS to combine them into a similar functional project that other people could use in the way they use LFS and WYOOS. This would simply be a proof-of-concept or prototype.

To this end, I will be taking notes on the process and I will give probably too much detail in the descriptions for the push updates, that way you can go through the repo history and it will read almost like a devblog. If I ever finish this project to my satisfaction, I will make an online manual in a similar style to LFS that goes over the later problems that I run into, the sources I used to help me code through them, and so on.

I am not yet committed to going this far with this project. It is a hobby project. I am doing this for my personal edutainment. As such, I cannot promise timely or continued updates. I do like the idea of giving people a more robust and thorough starting point for OS design, though, and I think that's an important project that's worth pursuing. There are other projects that might take precedence in my life, though.

Somebody more experienced with systems programming should probably make a better project than this one for that purpose, if they haven't done so already, but I haven't seen it yet. If they do, I might still use this a jumping off point, but we'll see. For now, this is only the seed of an idea that I might choose to water later, but that will probably be years from now. I have no idea what my life will look like then. If you are reading this, you are free to take this idea for yourself, as long as you know that I might still do this, too, eventually.
