{% if include.aurs %}[<abbr title="Arch User Repository Package">AU</abbr>](https://aur.archlinux.org/packages/{{ include.aurs }})<sup><abbr title="Multiple AUR packages exist for this program">M</abbr></sup>{% elsif include.aur %}[<abbr title="Arch User Repository Package">AU</abbr>](https://aur.archlinux.org/packages/{{ include.aur }}){% elsif include.pacman %}[<abbr title="Arch Linux Package">AP</abbr>](https://www.archlinux.org/packages/{{ include.pacman }}){% endif %}