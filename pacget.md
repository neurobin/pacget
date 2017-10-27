% pacget(8) pacget user manual
% Md. Jahidul Hamid <https://github.com/neurobin>
% September 03, 2017

# NAME

**pacget** -- A wrapper around **pacaur** to mimic yaourt's search feature.

# SYNOPSIS

**pacget** \[operation] \[options] \[target(s)]

**pacget** \[packages_to_install]

All arguments are forwarded to **pacaur** excluding some special ones which are processed separately to provide some extended functionalities over [pacaur](https://github.com/rmarquis/pacaur).

# DESCRIPTION

**pacget** works the same way as **pacaur** and consequently **pacman**. All basic operations are processed with **pacaur** which wraps around **pacman** and thus you can use the same knowledge of **pacman** and **pacaur**.

**pacget** extends some operations provided by pacaur, such as the search functionality. **pacget**'s `-s` operation searches both the official repo and AUR for the given search term and allows installing packages interactively (kinda like [yaourt](https://github.com/archlinuxfr/yaourt)).

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

# The following will search only arch official repo
# and give you option to select packages to install
pacget -r -s gimp

# The following will search only arch user repo aur
# and give you option to select packages to install
pacget -a -s gimp

# The following will search for gimp in both official repo and AUR
# and give you option to select packages to install
pacget -s gimp
```

![pacget example image](https://neurobin.org/img/pacget-ex.png)


# SPECIALISED OPTIONS

**-s, --search** *search_term*
: Search for *search_term* in both official Archlinux repositories and AUR, then install packages selectively and interactively. This produces output like **yaourt** with indexed package list and lets you select the packages by index number (e.g 1,2,3 or 1 2 3) and index range (1-3 or 3-1) to install them.

**-Ss, -S --search** *search_term*
: Same as `-s` option.

**-Fs, -F --search** *file_name*
: Search for packages containing file by the name *file_name* in the official repo. `pacget -Fy` must be run at least once to use this search functionality. This produces output like **yaourt** with indexed package list and lets you select the packages by index number (e.g 1,2,3 or 1 2 3) and index range (1-3 or 3-1) to install them.

**-cs** *search_term*
: Same as `-s`, with compact output (no newlines after each package entry)

**-c, --compact**
: Turn on compact mode.

**-h, --help**
: Show help for **pacget** and **pacaur**

**-v, --version**
: Show version info for **pacget**, **pacaur** and **pacman**

# SEE ALSO

See `pacaur(8)` (`man pacaur` ) for more details on pacaur options.

# BUG REPORT

<https://github.com/neurobin/pacget/issues>

