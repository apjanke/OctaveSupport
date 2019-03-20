sublime-octave
==============

Octave package for Sublime Text, providing syntax highlighting.

I’m not really sure what I'm doing here, either with the package itself, or how to structure a Git repo for a redistributable Sublime package.

## Installation

For now, only installation from the Git repo is supported.

* Clone the Git repo
  * `git clone https://github.com/apjanke/sublime-octave`
* Link the source directory into your Sublime Text `Packages/User` directory
  * on macOS:
    * `cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User`
    * `ln -s /path/to/my/cloned/sublime-octave/Octave.sublime-package .`
  * on Linux: You’ll need to find the Sublime Text data path yourself; I don’t know where it is
  * on Windows: Symlinks are not supported, so this won’t work. TBD.

## Usage

Once installed, there will be an “Octave” choice under the View > Syntax menu.
Open an Octave `.m` file and select it.
You may also want to do View > Syntax > "Open all with current extension as..." > Octave.

