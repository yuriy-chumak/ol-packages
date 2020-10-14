# ol-packages
Otus Lisp Packages Repository

Use [kiss](https://k1ss.org/package-manager) package manager.

Preparations step:
 * Install KISS package manager. This is a shell script, so you can simply download [the source file](https://raw.githubusercontent.com/kisslinux/kiss/master/kiss)
   into any accessible by $PATH directory, for example `/usr/bin`.
 * Clone the repository into any rw path (for example: `git clone https://github.com/yuriy-chumak/ol-packages /home/user/.kiss/ol-packages`)
 * Append global KISS_PATH to this directory (for example: `export KISS_PATH=/home/user/.kiss/ol-packages`). You can add this string into end of `~/.bashrc`.

Usage:
 * kiss build package-name
 * kiss install package-name

Btw:
 * Run "kiss update" to keep repositories up-to-date.
