make-dylan-app is a tool to create new Dylan projects.

Usage::

    make-dylan-app project-name

This will automatically generate a folder (named after the project name you
supplied) which contains 3 files:

- project-name.dylan
- library.dylan
- project-name.lid.

All these files contain reasonable default content and you can compile your
project with::

    dylan-compiler -build project-name.lid
