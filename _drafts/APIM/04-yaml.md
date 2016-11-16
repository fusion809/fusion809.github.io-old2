## YAML
**YAML** files are metadata files that can be read by a specialized type of Recipe script to provide it the specifics of how it should build an AppImage. The main Recipe script that should be used to build an AppImage from the data in a YAML is [here](https://github.com/probonopd/AppImages/recipes/meta/blob/master/Recipe). YAML files used to build AppImages have the following general format:

~~~yaml
app: <APP>

ingredients:
  package: <PACK>   # in case of a single package, if multiple use packages:
  packages:
    - <PACK1>
    - <PACK2>
    - <PACK3>
    - ...
  dist:    <DIST>
  sources:
    - <SOURCE1>
    - <SOURCE2>
    - <SOURCE3>
    - ...
  script:
    - <LINE1-1>
    - <LINE1-2>
    - <LINE1-3>
    - ...

script:
  - <LINE2-1>
  - <LINE2-2>
  - <LINE2-3>
  - ...
~~~
