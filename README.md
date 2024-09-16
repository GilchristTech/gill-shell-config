# Gill's Shell Configuration Installer

This is a shell and general software configuration software
installer for my personal shell, which also acts as a way of
organizing configuration installers in other software I use. I
tend to keep it in `~/shell/`.

It is very minimalistic. The main entrypoint, `install.sh` runs
shell scripts in `installers/`, sometimes working with files in
`configs/`. It also checks that `~/.zshrc` sources
`configs/rc.sh`, which contains common, small shell
configurations I use.

## Installation

To install everything, simply run the `install.sh` script in the
root of the repository. To clone the repo and run the install
script, copy the below into the terminal.

```bash
git clone https://github.com/GilchristTech/gill-shell-config ~/shell && ~/shell/install.sh
```

Alternatively, the more specific installer scripts are stored in
`installers/`, and can be ran individually, as long as
`installers/` is the working directory:
```bash
# Example: install vim configuration
cd installers
./vim.sh
```
