# NAME

**pacget** -- A wrapper around **pacaur** to mimic yaourt's search feature.

# SYNOPSIS

**pacget** \[operation] \[options] \[target(s)]

**pacget** \[packages_to_install]

All arguments are forwarded to **pacaur** excluding some special ones which are processed separately to provide some extended functionalities over [pacaur](https://github.com/rmarquis/pacaur).

# DESCRIPTION

**pacget** works the same way as **pacaur** and consequently **pacman**. All basic operations are processed with **pacaur** which wraps around **pacman** and thus you can use the same knowledge of **pacman** and **pacaur**.

**pacget** extends some operations provided by pacaur, such as the search functionality. **pacget**'s `-s` operation searches both the official repo and AUR for the given search term and allows installing packages interactively (kinda like [yaourt](https://github.com/archlinuxfr/yaourt)).

# DEPENDENCIES

It depends on the following packages:

1. pacaur
2. pkgfile (optional)

# INSTALL

Run the *install.sh* script:

```bash
# download the installer
wget https://raw.githubusercontent.com/neurobin/pacget/release/install.sh -O install.sh
chmod +x install.sh # Give execute permission
./install.sh        # Run the installer
```

# USAGE

It can be used the same way as `pacaur` (consequently `pacman`). The only difference is that some options come with extra facilities.

**Examples:**

```bash
# Upgrade
pacget -Syu

# The following installs the package linux-lts
pacget -S linux-lts

# The following is a short form to pacget -S linux-lts
pacget linux-lts


# The following command will search for gimp and
# give you option to select packages to install
pacget -s gimp

# The following will search only arch official repo
# and give you option to select packages to install
pacget -Ss gimp
```

![pacget example image](https://neurobin.org/img/pacget-ex.png)

