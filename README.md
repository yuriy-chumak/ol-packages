# ol-packages
Otus Lisp Packages Repository

Use [kiss](https://k1sslinux.org/package-manager) package manager.

Preparations step:
 * Install KISS package manager. This is just a shell script, so you can simply download [the source file](https://raw.githubusercontent.com/kiss-community/kiss/master/kiss) into any accessible by $PATH directory, for example `/usr/bin`.
 * Clone the ol-packages repository into any rw path (for example: `git clone https://github.com/yuriy-chumak/ol-packages /usr/kiss/ol-packages`)
 * Append global KISS_PATH to this folder (for example: `export KISS_PATH=/usr/kiss/ol-packages`). You can add this string at the end of `~/.bashrc`.
 * Set global KISS_ROOT variable to the `/usr` folder (for example: `export KISS_ROOT=/usr`).
 * That's all, you can install an available packages.

Usage:
 * kiss build package-name
 * kiss install package-name

Don't forget to run periodically "kiss update" to keep repositories up-to-date.
