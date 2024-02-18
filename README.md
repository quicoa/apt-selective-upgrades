# Apt Selective Upgrades

Simplify your system upgrade workflow using this set of scripts.  Without the
need for any overly complicated tools; just select the packages you want to
upgrade using your favorite editor and let APT download and install them
immediately.  Or choose to only download a selection of packages and install
them later.

## Usage

If necessary, edit [file](/file) to choose the location of the file containing the
temporary package list.  Then, execute any of the three script, like:

```sh
./apt-selective-upgrades.sh
```

To select packages and install them immediately, use `apt-selective-upgrades.sh`

To select packages, but only download them, use
`apt-selective-upgrades-download-only.sh`

To install previously selected and downloaded packages, use
`apt-selective-upgrades-install-only.sh`

> Please note: environment variable `EDITOR` is used to open you favorite
> editor.  Make sure this variable is set properly, otherwise it may not open
> your editor of choice.
