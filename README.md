OctaveSupport for Sublime Text 3
================================

OctaveSupport package for Sublime Text, providing syntax highlighting, indentation settings, and code snippets.

This is a work in progress: I’m new to writing Sublime Text extensions, so something may be off here.

I’m working on [getting this into the Package Control main channel](https://github.com/wbond/package_control_channel/pull/7517).

## Installation

### Installing with Package Control

This is how most users should do it.

* First, install [Package Control](https://packagecontrol.io/installation)
* In Sublime Text, open the Command Palette (Cmd-Shift-P on Mac, Ctrl-Shift-P on Linux/Windows) and choose “Package Control: Add Repository”
* Add `https://github.com/apjanke/OctaveSupport`
* Open the Command Palette and choose “Package Control: Install Package”
* Select `OctaveSupport` from the package list

### Installing from GitHub repo

This is how you should do it if you want to hack on OctaveSupport itself.

* Clone the Git repo
  * `git clone https://github.com/apjanke/OctaveSupport`
* Link the source directory into your Sublime Text `Packages/User` directory
  * on macOS:
    * `cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User`
    * `ln -s /path/to/my/cloned/sublime-octave OctaveSupport.sublime-package`
  * on Linux: You’ll need to find the Sublime Text data path yourself; I don’t know where it is
  * on Windows: Symlinks are not supported, so this won’t work. TBD.

## Usage

Once installed, there will be an “Octave” choice under the View > Syntax menu.
Open an Octave `.m` file and select it.
You may also want to do View > Syntax > "Open all with current extension as..." > Octave.

### Snippets

To use the code snippets, type one of their names and hit the Tab key. Available snippets:

* `octclass` – A classdef class definition, in GNU Octave style
* `octfun` - A function definition, in GNU Octave style
  * This is a fixed-up version of the one found in Sublime Text’s Matlab package.
* `unwind` – An `unwind_protect` block
* `unwtry` – A combination `unwind_protect` + `try`/`catch` block 
