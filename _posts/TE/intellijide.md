## IntelliJ IDEA Community Edition
{% include image.html image="IntellijIDE-CE-15.0.2.png" description="IntelliJ IDEA Community Edition 15.0.2 running under Manjaro Linux" float="none" width="1130px" %}

### Background
{% include_relative TE/links2.md program="IntelliJ IDEA Community Edition" package="dev-util/idea-community" %}, which I will abbreviate as **IJCE**, is a free and open-source IDE developed by JetBrains that is designed specifically for Java development. It is the free counterpart to a proprietary IDE (called IntelliJ IDEA Ultimate Edition) that is more feature-packed with support for several additional programming languages.

### Customizability
IntelliJ IDEA's customizability is something I really cannot comment on, but I would imagine it is not very customizable due to the fact that this would defeat the purpose of JetBeans creating a community edition, which is to tempt users to buy the proprietary, Ultimate Edition, with the extra features it has as opposed to the community edition.

### Features
Its features is something I cannot really comment on as I have limited experience with it, but it does not support any programming languages beyond a limited set including and related to Java like the Groovy programming language.

### Obtaining It
IJCE is installable on both distributions covered in this post (theoretically these instructions should also work for most other distributions as well), via downloading the tarball (in `.tar.gz` format) from their website, extracting its contents and running the install script `idea.sh` in the `bin/` folder within. If you want me to hold your hand through it, here we go, assuming the latest version of IntelliJ IDEA is still 15.02 when you try this, run:
{% include codeu.html line1="wget -cqO- https://d1opms6zj7jotq.cloudfront.net/idea/ideaIC-15.0.2.tar.gz | tar -xz" line2="cd idea-IC-143.1184.17/bin" line3="./idea.sh" %}
to get the installer for the program running. From there just follow the installer through its various steps and hopefully you should have IJCE install on your system.

### Advantages (Pros)
