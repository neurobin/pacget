% pac-get(8) pac-get user manual
% Md Jahidul Hamid <https://github.com/neurobin>
% August 21, 2017

# NAME
pac-get -- An Archlinux package manager (A wrapper over [pacaur](https://github.com/rmarquis/pacaur)).

An Archlinux package manager (A wrapper over pacaur).

It provides some extra facility over pacaur such as search in both arch repository and AUR and install them selectively (like yaourt).

# SYNOPSIS

**pac-get** <operation> [ options ] [ target(s) ]

All options are forwarded to **pacaur** excluding some special ones which are processed separately to provide some extended functionality over **pacaur**.

# DESCRIPTION

**pac-get** works the same way as **pacaur** and consequently **pacman**. All basic operations are processed with **pacaur** which wraps around **pacman** and thus you can use the same knowledge of **pacman** and **pacaur**.

**pac-get** extends some options provided by pacaur, such as the search functionality. **pac-get**'s `-s` option searches both the official repo and AUR for the given search term.

Also **pac-get**'s `-s` option allows installing packages interactively (kinda like [yaourt](https://github.com/archlinuxfr/yaourt)).

# DEPENDENCIES

It depends on the following packages:

1. pacaur
2. pkgfile (optional)

# USAGE

It can be used the same way as `pacaur` (consequently `pacman`). The only difference is that some options come with extra functionalities.

**Examples:**

```bash
# The following installs the package linux-lts
pac-get -Sy linux-lts

# Upgrade:
pac-get -Syu
# etc.. same as pacman and pacaur.

# The following command will search for gimp and
# give you option to select packages to install
pac-get -s gimp 
```

![pac-get example image](pac-get-ex.png)


# OPTIONS

-s *search_term*
: Search for *search_term* in both official Archlinux repositories and AUR, then install packages selectively and interactively.

-s/x *search_term*
: Same as `-s` but includes `pkgfile` search. The package `pkgfile` must be installed.


# FULLY SPECIFIED NAMES FOR OPTIONS

All of the shorthand option names have equivalent full names:

Opt name | Full name
-------- | ---------
-s | --search
-s/x | --search/x
-h | --help
-v | --version

# BUG REPORT

<https://github.com/neurobin/pac-get/issues>

