{% if include.package %}**Fedora** / **Korora** (its name is [`{{ include.package }}`](https://apps.fedoraproject.org/packages/{{ include.package }}) so run <code><span class = "coder"><abbr title="This command is to be run as root user; to enter root run the su command">root #</abbr></span> &nbsp;dnf install -y {{ include.package }}</code> to install it){% endif %}