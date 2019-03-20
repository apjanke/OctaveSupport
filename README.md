OctaveSupport for Sublime Text 3
================================

OctaveSupport package for Sublime Text, providing syntax highlighting, indentation settings, and code snippets.

I’m not really sure what I'm doing here, either with the package itself, or how to structure a Git repo for a redistributable Sublime package.
I’m working on [getting this into Package Control](https://github.com/wbond/package_control_channel/pull/7517).

## Installation

For now, only installation from the Git repo is supported.

* Clone the Git repo
  * `git clone https://github.com/apjanke/sublime-octave`
* Link the source directory into your Sublime Text `Packages/User` directory
  * on macOS:
    * `cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User`
    * `ln -s /path/to/my/cloned/sublime-octave Octave.sublime-package`
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

## TODO

Check out https://github.com/evandrocoan/ITE - it has Octave syntax, but it’s done as an extension to Matlab.

Also check out https://github.com/tushortz/GNU-Octave-Completions, another Octave completions package.
