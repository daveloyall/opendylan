*********
Debugging
*********

Debugging a Compiler Crash or Internal Error
--------------------------------------------

When the compiler generates an internal error or directly crashes, using
gdb or lldb is a great way to find out more about what has gone wrong.

See `Debugging with GDB or LLDB`_ for general information on debugging
applications written with Open Dylan.

An internal error from the compiler will often look something like
this::

    Internal error: ELEMENT outside of range: -5

To find out what is happening, run the compiler under gdb or lldb,
and set a breakpoint on ``Kdisplay_conditionYcommand_linesVenvironment_commandsI``.
Doing so will allow you to see the stack trace at the time of the internal
error.

Dumping DFM Output
------------------

To be documented...

.. _Debugging with GDB or LLDB: http://opendylan.org/documentation/getting-started-cli/debugging-with-gdb-lldb.html
