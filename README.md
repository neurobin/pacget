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

It can be used the same way as pacaur. The only difference is that some options come with extra functionalities. An example:

```bash
$ arpi -s qbittorrent

1 aur/qbittorrent-git 3.3.14.r1495.g802cd89ec-1  (39, 1.61) 
    A bittorrent client powered by C++, Qt5 and the good libtorrent library (development version)

2 aur/qbittorrent-qt4 3.3.13-1  (8, 0.78) 
    A bittorrent client written in C++ / Qt4 using the good libtorrent library

3 aur/qbittorrent-stable-git 3.3.13.r0.g15e772623-1  (3, 0.45) 
    An advanced BitTorrent client programmed in C++, based on Qt toolkit and libtorrent-rasterbar. Built from source.

4 aur/qbittorrent-dark-git 3.3.11.r730.g3e50ca15f-1  (1, 0.05) 
    A dark version of bittorrent client powered by C++, Qt5 and the good libtorrent library (development version)

5 aur/qbittorrent-nogui-git .7653-1  (6, 0.00) 
    Bittorrent client based on libtorrent-rasterbar (without X support)

6 community/qbittorrent 3.3.13-1  [installed] 
    An advanced BitTorrent client programmed in C++, based on Qt toolkit and libtorrent-rasterbar.

7 community/qbittorrent-nox 3.3.13-1 
    An advanced BitTorrent client programmed in C++, based on Qt toolkit and libtorrent-rasterbar, w/o gui

>>> Enter the sequence of packages to be installed.
Separate by comma (1,2,3) or provide by range (e.g 1-5): 1,2,3,1-15,23,30-45
:: Synchronizing package databases...
 core is up to date
 extra is up to date
 community is up to date
```
