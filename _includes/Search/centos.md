{% if include.package %}**CentOS** / **Oracle Linux** / **Red Hat Enterprise Linux** / **Scientific Linux** (its name is `{{ include.package }}` so run <code><span class = "coder"><abbr title="This command is to be run as root user; to enter root run the su command">root #</abbr></span> &nbsp;yum install -y {{ include.package }}</code> to install it){% endif %}