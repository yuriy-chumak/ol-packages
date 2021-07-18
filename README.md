OL-PACKAGES REPOSITORY
======================

Otus Lisp Packages Repository

Use [kiss](https://k1sslinux.org/package-manager) package manager.

PREPARATION STEPS
-----------------

* Install KISS package manager: Simply download [just one source file](https://raw.githubusercontent.com/kisslinux/kiss/master/kiss) into any accessible by $PATH directory, "/usr/local/sbin" for example.
  ```
  $ sudo wget https://raw.githubusercontent.com/kisslinux/kiss/master/kiss -O /usr/local/sbin/kiss
  $ sudo chmod +x /usr/local/sbin/kiss
  ```

* Clone this repository into any allowing read/write path, ".kiss/ol-packages" for excample.
  ```
  $ git clone https://github.com/yuriy-chumak/ol-packages ~/.kiss/ol-packages
  ```

* Create new global variable KISS_PATH (or append existing if any) to the cloned directory path.
  ```
  $ export KISS_PATH=/home/$USER/.kiss/ol-packages
  ```
  Note: You can add this string at the end of `~/.bashrc`.
  ```
  $ echo export KISS_PATH=/home/$USER/.kiss/ol-packages >> ~/.bashrc
  ```

* Run `kiss update`.
  ```
  $ kiss update
  ```

Thats all, KISS ready to go.

Sample steps as all-in-one shell script:
```bash
sudo wget https://raw.githubusercontent.com/kisslinux/kiss/master/kiss -O /usr/local/sbin/kiss
sudo chmod +x /usr/local/sbin/kiss
git clone https://github.com/yuriy-chumak/ol-packages ~/.kiss/ol-packages
echo 'export KISS_PATH=/home/$USER/.kiss/ol-packages' >> ~/.bashrc

kiss update
```

USAGE
-----

* kiss b package-name
  ```
  $ kiss b ol
  ```

BTW
---

* Run "kiss update" to keep repositories up-to-date periodically.
