OL-PACKAGES REPOSITORY
======================

Otus Lisp Packages Repository

Use [kiss](https://k1sslinux.org/package-manager) package manager.

PREPARATION STEPS
-----------------

* Install KISS package manager: Simply download [the source file](https://raw.githubusercontent.com/kisslinux/kiss/master/kiss)
   into any accessible by $PATH directory, for example `/usr/bin`.
* Clone this repository into any rw path (for example: `git clone https://github.com/yuriy-chumak/ol-packages /home/$USER/.kiss/ol-packages`)
* Append global KISS_PATH to the cloned directory (for example: `export KISS_PATH=/home/$USER/.kiss/ol-packages`). You can add this string at the end of `~/.bashrc`.

Sample steps as all-in-one shell script:
```bash
sudo wget https://raw.githubusercontent.com/kisslinux/kiss/master/kiss -O /usr/bin/kiss
sudo chmod +x /usr/bin/kiss
git clone https://github.com/yuriy-chumak/ol-packages /home/$USER/.kiss/ol-packages
echo 'export KISS_PATH=/home/$USER/.kiss/ol-packages' >> /home/$USER/.bashrc

kiss update
```

USAGE
-----

* kiss build package-name
* kiss install package-name

BTW
---

* Run "kiss update" to keep repositories up-to-date periodically.
