
# various Gnome desktop settings (desktop, input, statusbar, etc)


# dump settings
dconf dump / > dconf.dump

# load settings
dconf load / < dconf.dump
