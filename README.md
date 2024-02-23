# sgs_os
This is a modifiable showcase. It is not meant for practical use.

<h2>Project Overview</h2>

This is a project that aims to supplement an Arch and Nix-influenced [Linux From Scratch](https://www.linuxfromscratch.org/lfs/read.html) with [Write Your Own Operating System](https://youtube.com/playlist?list=PLHh55M_Kq4OApWScZyPl5HhgsTJS9MZ6M&feature=shared) in order to go more in-depth into the kernel, which is only briefly covered in section 10 of LFS. For the sake of starting lower and building up, I will be starting with WYOOS and then moving on to LFS to fill in the gaps.

The main point of this project is to simply gain familiarity with how operating systems work at their most foundational level. A side benefit is that it helps me gain familiarity with programming a more complex project, but that isn't the main purpose. I'm a hacker, not an OS dev, and my interest is mainly in understanding the moving parts so that I can exploit them better in other operating systems.

Right now, I am only committed to combining WYOOS with LFS. This project is also done in my free time, so consistent updates might not be possible since this is one of my lowest priorities. Anything beyond WYOOS and LFS is superfluous, and might not happen at all.

<h2>Timeline</h2>

This is a rough outline and subject to revision.

1. [Write Your Own Operating System](https://youtube.com/playlist?list=PLHh55M_Kq4OApWScZyPl5HhgsTJS9MZ6M&feature=shared)
2. [Linux From Scratch](https://www.linuxfromscratch.org/lfs/read.html) (+ Arch/Nix Utils)
3. Bootloader (maybe)
4. "Other kernel stuff" (I will define this in better detail if/when I get there)

The .iso will also be deployed in this repo, mostly for my own convenience and as a formality.

<h2>How to Use</h2>

Prequisite packages to make from source:

mtools, gcc, as, xorisso, etc.

Clone the git repo to your working directory:

`git clone https://github.com/s-sutton/sgs_os/`

Enter the generated directory:

`cd sgs_os`

Make the iso file:

`make kernel.iso`

Then you can use the .iso on a bootable medium or a VM.

<h2>Additional Notes</h2>

The WYOOS+LFS approach has some foreseeable limitations. For instance, with WYOOS+LFS alone, there is no custom bootloader so it still cannot be said to be a complete OS. LFS mostly focuses on utilities and can be helpful for creating Linux distros, but creating a Linux-compatible OS from scratch means essentially writing an entire kernel.

I do intend to write a simple Unix-like kernel from scratch, but it will obviously not be good enough to compete with Linux, FreeBSD, or Solaris, nor is that the intention. The point is more to have a self-contained OS where I handwrote the most foundational code so that I might gain a more intimate understanding of the very foundations of practical computing. WYOOS+LFS simply gives me a baseline and will hopefully help the end product be compatible with Linux programs.

Then (or perhaps during) I would like to write my own compilers in an instruction set architecture like x86, at least simple ones that are hopefully enough to compile everything here. I'm not sure if I will get to this or not, to be honest with you. This will be a separate, complementary project if/when it happens.

This is a large project, but it essentially consists of multiple, smaller projects. It simply gives me a general guideline to learn systems programming on my own. In fact, my approach to this project is less like an actual development process and more like a home-grown series of college courses that build on one another. The result of my endeavor would be kind of like a doctoral thesis, where I've shown my cumulative experience through a single project. To me, this is more efficient than getting a compsci degree, because it goes more in-depth into the material I'm interested in and doesn't waste as much time with, for example, artificial intelligence, which I do not have any interest in learning at all.

I have worked on large-scale long-term projects like this in the past. I have published a few books under a pseudonym, for instance, and each one took a few years to finish. I recently stopped working on my current book that I've been writing for 3 years now, in large part because I wanted to focus more on developing my hacking skills. This is going to be my new focus for awhile, and I already know that I have the discipline and commitment to continue working on it indefinitely, if that is what I eventually decide to do.

I would eventually like this core OS to take inspiration from Linux distros such as ParrotOS, TAILS, Whonix, and Kali, to essentially make a secure and private OS that can also be used for offensive computer security. That's probably way too ambitious, but I'm leaving the possibility open. If I ever get to that point, the OS would need to turn into a community project. Again, I'm not an OS dev, so this isn't something I'm too invested in doing.

If you're just some random dev that has somehow stumbled onto this hobby project, you are free to fork it at any time to build off of. I have no idea why you would want to do that, but you don't need my permission to use my code or whatever weird solutions I come up with for the problems that I encounter while developing this.

In this project's later stages, I would like to design it to be, essentially, an easily-modifiable starting point for other people to build their own complete operating systems from. In other words, I'd like to build off of LFS and WYOOS to combine them into a similar functional project that other people could use in the way they use LFS and WYOOS. This would simply be a proof-of-concept or prototype.

To this end, I will be taking notes on the process and I will give probably too much detail in the descriptions for the push updates, that way you can go through the repo history and it will read almost like a devblog. If I ever finish this project to my satisfaction, I will make an online manual in a similar style to LFS that goes over the later problems that I run into, the sources I used to help me code through them, and so on.

I am not yet committed to going this far with this project. It is a hobby project. I am doing this for my personal edutainment. As such, I cannot promise timely or continued updates. I do like the idea of giving people a more robust and thorough starting point for OS design, though, and I think that's an important project that's worth pursuing. There are other projects that might take precedence in my life, though.

Somebody more experienced with systems programming should probably make a better project than this one for that purpose, if they haven't done so already, but I haven't seen it yet. If they do, I might still use this a jumping off point, but we'll see. For now, this is only the seed of an idea that I might choose to water later, but that will probably be years from now. I have no idea what my life will look like then. If you are reading this, you are free to take this idea for yourself, as long as you know that I might still do this, too, eventually.

I am aware of other hobby OS projects with a similar purpose, such as BareMetal, BeeOS, DiyOS, and MikeOS. While I might reference them in the future for inspiration after getting the basics finished here, none of these are quite what I'm aiming for. I want to make OS development more accessible with something a bit more comprehensible than just a wiki or loosely associated tutorials. In other words, I would make something more like LFS but for operating systems in general.
