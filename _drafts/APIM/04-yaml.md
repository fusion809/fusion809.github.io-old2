## YAML
**YAML** files are metadata files that can be read by a specialized type of Recipe script to provide it the specifics of how it should build an AppImage. The main Recipe script that should be used to build an AppImage from the data in a YAML is [here](https://github.com/probonopd/AppImages/recipes/meta/blob/master/Recipe). They are only to be used when Debian packages are going to be used to build the AppImage or [binary archives](/glossary/#cross-distribution-package-formats) are to be used. If you want to use RPM packages to build your AppImage I am afraid that you will need to see the next section [Docker](#docker). YAML files used to build AppImages have the following general format:

~~~yaml
app:     <APP>           # Name of the App; can be capitalized
bintray: true            # Only specified as needed, most AppImages should not need this field
union:   true            # Ditto

ingredients:
  package: <PACK>   # name of the package that provides <APP>, if only one package is needed
  packages:                # Use this field if multiple packages need to be specified
    - <PACK1>
    - <PACK2>
    - <PACK3>
    - ...
  dist:    <DIST>      # target distribution codename. For example jessie for Debian 8, oldstable for Debian 7, etc.
  sources:                 # lines in /etc/apt/sources.list of your target distribution
    - <SOURCE1>
    - <SOURCE2>
    - <SOURCE3>
    - ...
  script:                   # Commands to be executed before (or perhaps even instead of) Debian binaries are downloaded.
    - <LINE1-1>
    - <LINE1-2>
    - <LINE1-3>
    - ...

script:                     # Commands to be run after Debian binaries are downloaded and extracted
  - <LINE2-1>
  - <LINE2-2>
  - <LINE2-3>
  - ...
~~~

It is important to note, however, that not all of these fields are mandatory. The binpatch and union fields are only needed in select cases when ommitting them causes errors that are only noticed when the AppImage the yaml builds are executed. The `package`, `packages`, `dist` and `sources` fields are only required if you are building your AppImage from Debian packages, if you are using binary archives you do not need them. See for example my [`atom-beta`](https://github.com/fusion809/AppImages/blob/recipes/meta/atom-beta/atom-beta.yaml) yaml.
