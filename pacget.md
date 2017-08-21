% pacget(8) pacget user manual
% Md. Jahidul Hamid <https://github.com/neurobin>
% August 22, 2017

# NAME

**pacget** -- An Archlinux package manager (A wrapper over **pacaur**).

# SYNOPSIS

**pacget** \[operation] \[options] \[target(s)]

**pacget** \[packages_to_install]

All arguments are forwarded to **pacaur** excluding some special ones which are processed separately to provide some extended functionalities over [pacaur](https://github.com/rmarquis/pacaur).

# DESCRIPTION

**pacget** works the same way as **pacaur** and consequently **pacman**. All basic operations are processed with **pacaur** which wraps around **pacman** and thus you can use the same knowledge of **pacman** and **pacaur**.

**pacget** extends some operations provided by pacaur, such as the search functionality. **pacget**'s `-s` operations searches both the official repo and AUR for the given search term and allows installing packages interactively (kinda like [yaourt](https://github.com/archlinuxfr/yaourt)).

# DEPENDENCIES

It depends on the following packages:

1. pacaur
2. pkgfile (optional)

# USAGE

It can be used the same way as `pacaur` (consequently `pacman`). The only difference is that some options come with extra facilities.

**Examples:**

```bash
# The following installs the package linux-lts
pacget -Sy linux-lts

# The following is a short form to pacget -S linux-lts
pacget linux-lts

# Upgrade:
pacget -Syu
# etc.. same as pacman and pacaur.

# The following command will search for gimp and
# give you option to select packages to install
pacget -s gimp 
```

![pacget example image](https://neurobin.org/img/pacget-ex.png)


# PACGET OPTIONS

**-s, --search** *search_term*
: Search for *search_term* in both official Archlinux repositories and AUR, then install packages selectively and interactively. This produces output like **yaourt** and lets you select the packages by number (e.g 1,2,3 or 1 2 3) and range (1-3 or 3-1) to install them.

**-sx, --searchx** *search_term*
: Extended search. Same as `-s`, but includes `pkgfile` search. The package `pkgfile` must be installed.

**-h, --help**
: Show help for **pacget** and **pacaur**

**-v, --version**
: Show version info for **pacget**, **pacaur** and **pacman**

# BUG REPORT

<https://github.com/neurobin/pacget/issues>

