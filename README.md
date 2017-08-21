Arch Package Installer (A wrapper over pacaur).

It provides some extra facility over pacaur such as search in both arch repository and AUR and install them selectively (like yaourt).

# DEPENDENCIES

It depends on the following packages:

1. pacaur
2. pkgfile (optional)

# INSTALL

Copy the script to */usr/bin/*:

```bash
chmod +x arpi
sudo cp arpi /usr/bin/
```

# USAGE

It can be used the same way as `pacaur` (consequently `pacman`). The only difference is that some options come with extra functionalities.

**Example:**

```bash
# The following installs the package linux-lts
arpi -Sy linux-lts

# Upgrade:
arpi -Syu
# etc.. same as pacman and pacaur.

# The following command will search for gimp and
# give you option to select packages to install
arpi -s gimp 
```

![arpi example image](arpi-ex.png)

