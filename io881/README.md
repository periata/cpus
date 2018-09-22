IO881
=====

I/O processors are most commonly associated with large systems. For
many, they're the defining feature of the mainframe system: handle IO
on separate, small processors and drop the results directly into
memory so that the main processor can concentrate on the real
work. They have occasionally appeared on smaller systems: the Intel
8089, for example, was intended for use with the 8086 or 8088,
although as it could only handle two channels and was tightly coupled
to the processor (so you could only really have one of them in a
system) it wasn't exactly the most useful IO processor in the world.

Here's an IO processor for smaller systems. It's designed to be usable
on an 8 bit system with an Intel MCS-like bus (so an 8080, 8085, Z80,
or 8088) and up to 24 address bits. It's also designed to be a bit
more flexible: it can handle 8 actual devices, and also can handle
processing for logical channels (e.g. for the result of merging data
from two physical devices

Details
=======

My current plan is to separate the system into the following logical
blocks:

A DMA controller, interfacing to the system and controlling access to
the bus in order to allow the processor to load data from or store
data into memory.  The precise details of this will vary according to
the host processor, so I may design multiple versions of this block
(although to start with I will be aiming for Z80 systems).

An interrupt controller.  This allows the processor to send interrupts
to the host computer when tasks have finished or otherwise need
attention.  Again, this will be closely coupled to the type of
processor, so I may end up producing some variations on this design.

A register multiplexer.  This sits on the processor bus and allows the
host computer to inspect or modify processor control registers.

A daisy-chainable processor block, which can handle 16 data channels,
each of which may (optionally) be attached to one input stream and one
output stream (where a stream is either a DMA block or a port on a
connected device) and has a local IO bus onto which up to 8
individually addressable devices may be attached.  The processor will
forward DMA/IRQ requests from processors further down the chain.
Realistically, 2 of these blocks would handle the IO requirements of
most plausible small computer systems, and adding a third would make a
system that could handle just about any foreseeable requirement (of a
single user PC, at least).  For example the following setup would
require 10 channels, and would therefore leave 6 available channels of
a two-block configuration:

* keyboard in
* mouse in
* 2 UARTs (each requiring one input and one output channel) parallel out
* disk in/out
* video out

The processor itself will be design to be as simple as possible.  I'm
currently considering using 4-bit opcodes for common operations, with
a few escape sequences to allow for up to 61 total operations.  With
either 2 or 3 registers, this should be enough to support moderately
complex programs.  Microcoded to reduce complexity.  Probably a pair
of 74181s for the ALU.

The most complex part will be the fact that each of the 16 channels
needs to have the appearance of having its own processor.  For
performance reasons, saving the data associated with a channel into
memory and restoring it will be impossible (I want to be able to pass
data between channels easily and cheaply, and the minimum information
you need to be able to do that is at least 8 bytes -- I don't think a
16 cycle latency while one context is saved and another restored is
fast enough) so there will need to be a lot of registers.  My first
quick sketches suggest somewhere around 12 74AS870s would do the job
(although those are very hard to get hold of at a reasonable price,
and I'd need 8 times as many of the next logical contender, the
74*670, which is clearly infeasible).  The register file (and probably
multiplexers to connect the registers to the buses) may end up being
in a CPLD, but other than that I intend to only use components that
would have been available at a reasonable cost circa 1982-1983.