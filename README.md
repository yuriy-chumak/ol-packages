OL-PACKAGES REPOSITORY
======================

An [Otus Lisp](https://github.com/yuriy-chumak/ol) Packages Repository, with the [kiss](https://kisslinux.org/package-manager) package manager as a management tool.


INSTALL "KISS"
--------------

### Automatic install

Note: `git` required.
```bash
source <(curl -fsSL https://raw.githubusercontent.com/yuriy-chumak/ol-packages/master/install.sh)
```

Paste that in a shell prompt and run.

### VirtualEnv install

This install does not require `git`, but is not able of updating the repository to the latest changes.
Designed to be used as a "virtual" ol environment.

```bash
source <(curl -fsSL https://raw.githubusercontent.com/yuriy-chumak/ol-packages/master/install-venv.sh)
```

Paste that in a shell prompt and run.

### Alternative (manual) install

- [Manual install instructions](install-manual.md)

UNINSTALL
---------

- Remove next lines from the `$USER/.bashrc` file:
  ```
  # ol-packages repo setup
  export KISS_PATH=:/home/...
  export PATH=$PATH:/home/...
  ```
- Completely remove folder `$USER/.kiss` (repository files),
- Completely remove folder `$USER/.cache/kiss` (intermediate files and artifacts),
- Restart terminal console.


USAGE
-----

- Install package
  ```bash
  $ kiss build package-name
  ```

  Example:
  ```
  $ kiss build libol-soloud
  -> Building: explicit: libol-soloud
  -> Checking for pre-built dependencies
  -> libol-soloud Reading sources
  found git+https://github.com/jarikomppa/soloud.git#1157475881da0d7f76102578255b937c7d4e8f57
  -> libol-soloud Checking out 1157475881da0d7f76102578255b937c7d4e8f57
  remote: Total 0 (delta 0), reused 0 (delta 0), pack-reused 0
  From https://github.com/jarikomppa/soloud
  * branch            1157475881da0d7f76102578255b937c7d4e8f57 -> FETCH_HEAD
  HEAD is now at 1157475 Duck filter
  -> libol-soloud Verifying sources
  -> libol-soloud Building package (1/1)
  -> libol-soloud Extracting sources
  -> libol-soloud Starting build
  -- The C compiler identification is GNU 9.4.0
  -- The CXX compiler identification is GNU 9.4.0
  .........
  -- Configuring done
  -- Generating done
  -- Build files have been written to: /home/$USER/.cache/kiss/proc/26208/build/libol-soloud
  Scanning dependencies of target soloud
  [  1%] Building CXX object CMakeFiles/soloud.dir/src/core/soloud.cpp.o
  [  3%] Building CXX object CMakeFiles/soloud.dir/src/core/soloud_audiosource.cpp.o
  .........
  -- Installing: /home/$USER/.cache/kiss/proc/26208/pkg/libol-soloud/usr/local/share/SoLoud/cmake/soloud-config-noconfig.cmake
  -> libol-soloud Successfully built package
  -> libol-soloud Generating manifest
  -> libol-soloud Stripping binaries and libraries
  strip -s -R .comment -R .note /home/$USER/.cache/kiss/proc/26208/pkg/libol-soloud/usr/local/lib64/libsoloud.so
  -> libol-soloud looking for dependencies (using readelf)
  -> libol-soloud Generating etcsums
  -> libol-soloud Creating tarball
  -> libol-soloud Successfully created tarball
  -> Install built packages? [libol-soloud]
  -> Continue?: Press Enter to continue or Ctrl+C to abort

  Using /usr/bin/sudo (to become root)
  [sudo] password for $USER:
  -> libol-soloud Checking if manifest valid
  -> libol-soloud Checking if package installable
  -> libol-soloud Checking for package conflicts
  -> libol-soloud Installing package (libol-soloud@20200207-2.tar.gz)
  -> libol-soloud Installed successfully
  ```

- Uninstall package
  ```bash
  $ kiss remove package-name
  ```

  Example:
  ```
  $ kiss remove libol-soloud
  Using /usr/bin/sudo (to become root)
  -> libol-soloud Checking if package removable
  -> libol-soloud Removing package
  -> libol-soloud Removed successfully
  ```

BTW
---

* Run "kiss update" to keep repository up-to-date periodically.
