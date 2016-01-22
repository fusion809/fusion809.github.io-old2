## Basic Bash Syntax
The Bash syntax has several distinct components, which can be classed as <a href="#keywords-and-special-characters">keywords and special characters</a>, <a href="#basic-unix-commands">external commands</a>, <a href="#builtins">builtins</a>, <a href="#variables">variables</a>, <a href="#functions">functions</a>, <a href="#loops">loops</a>, <a href="#selectors">selectors</a>, <a href="#tests">tests</a> and <a href="#conditionals">conditionals</a>. Many of these are shared by other Unix shells.

### Basic Unix Commands
**Table 1** lists some basic Unix commands that are provided by the GNU Core Utilities package. Not all are listed, as I do not even understand them all.
<table style="width: 100%;" class="green">
<caption>Table 1: Basic Unix Commands, provided by the GNU Core Utilities Package</caption>
<tbody>
<tr>
<td class = "title">Command</td>
<td class = "title">Meaning/Usage</td>
<td class = "title">Example(s)</td>
<td class = "title">Manpage (HTML)</td>
</tr>
<tr>
<td class="green"><code>cat</code></td>
<td class="green">Concatenate file. Take file contents and send them to <a href = "https://en.wikipedia.org/wiki/Standard_streams">standard output</a>.</td>
<td class="green">{% highlight bash %}cat /etc/shells{% endhighlight %}</td>
<td class="green">{% include Links/man.html man="cat.1p" %}</td>
</tr>
<tr>
<td class="green"><code>chmod</code></td>
<td class="green">Change the permissions of a file</td>
<td class="green">{% highlight bash %}chmod +x build.sh{% endhighlight %}</td>
<td class="green">{% include Links/man.html man="chmod.1p" %}</td>
</tr>
<tr>
<td class="green"><code>chown</code></td>
<td class="green">Change the ownership of a file</td>
<td class="green">{% highlight bash %}chmown apache:apache -R /var/www/localhost/htdocs{% endhighlight %}</td>
<td class="green">{% include Links/man.html man="chown.1p" %}</td>
</tr>
<tr>
<td class="green"><code>chroot</code></td>
<td class="green">Run a command/interactive shell with a special root directory</td>
<td class="green">{% highlight bash %}chroot /mnt/sabayon /bin/bash{% endhighlight %}</td>
<td class="green">{% include Links/man.html man="chroot.1" %}</td>
</tr>
<tr>
<td class="green"><code>cp</code></td>
<td class="green">Copy file</td>
<td class="green">{% highlight bash %}cp ~/.bashrc ~/GitHub/.bashrc{% endhighlight %}</td>
<td class="green">{% include Links/man.html man="cp.1p" %}</td>
</tr>
<tr>
<td class="green"><code>du</code></td>
<td class="green">Estimate file space usage</td>
<td class="green">{% highlight bash %}du -bs tmp.bundle{% endhighlight %}</td>
<td class="green">{% include Links/man.html man="du.1" %}</td>
</tr>
<tr>
<td class="green"><code>echo</code></td>
<td class="green">Display a line of text</td>
<td class="green">{% highlight bash %}echo $SHELL{% endhighlight %} returns the current shell's file system location.</td>
<td class="green">{% include Links/man.html man="echo.1" %}</td>
</tr>
<tr>
<td class="green"><code>ln</code></td>
<td class="green">Make a link between files</td>
<td class="green">{% highlight bash %}ln -s /usr/bin/atom /usr/local/bin/atom {% endhighlight %} when Atom is installed from Entropy allows <code>/usr/local/bin/atom</code> to be used to launch Atom.</td>
<td class="green">{% include Links/man.html man="ln.1p" %}</td>
</tr>
<tr>
<td class="green"><code>ls</code></td>
<td class="green">List files</td>
<td class="green">{% highlight bash %}ls{% endhighlight %} lists files and directories in the current directory, except for hidden ones.</td>
<td class="green">{% include Links/man.html man="ls.1p" %}</td>
</tr>
<tr>
<td class="green"><code>mkdir</code></td>
<td class="green">Create a new empty directory</td>
<td class="green">{% highlight bash %}mkdir -p $HOME/Documents/Manpages{% endhighlight %}</td>
<td class="green">{% include Links/man.html man="mkdir.1"%}</td>
</tr>
<tr>
<td class="green"><code>mv</code></td>
<td class="green">Move file</td>
<td class="green">{% highlight bash %}mv ~/.bashrc ~/GitHub/sabayon-scripts/{% endhighlight %}</td>
<td class="green">{% include Links/man.html man="mv.1p" %}</td>
</tr>
<tr>
<td class="green"><code>rm</code></td>
<td class="green">Remove file(s)</td>
<td class="green">{% highlight bash %}rm $HOME/Documents/Manpages/equo.1.html{% endhighlight %}</td>
<td class="green">{% include Links/man.html man="rm.1" %}</td>
</tr>
<tr>
<td class="green"><code>uname</code></td>
<td class="green">Print system information</td>
<td class="green">{% highlight bash %}uname -r{% endhighlight %} lists the kernel details.</td>
<td class="green">{% include Links/man.html man="uname.1" %}</td>
</tr>
</tbody>
</table><br/>
{% include Layouts/clear.html %}
## Builtins
Several Bash commands (or **builtins**) exist and some (but by no stretch of the imagination all &mdash; I do not even understand them all!) basic ones are explained in **Table 2**. It is worthwhile noting that all these commands are purely Bash commands, by this I mean, they do not call any command-line programs to do their work for them. See many commands you will see in Bash scripts are not Bash commands, *per se*, rather they are commands that use another command-line program such as `mv` or `pwd` to do the work, but they can be run from within Bash.

<table style="width: 100%;">
<caption>Table 2: Some Basic Builtins</caption>
<tbody>
<tr>
<td class="title">Command</td>
<td class="title" style="width: 20%;">Meaning</td>
<td class="title" style="width: 50%;">Examples</td>
<td class="title" style="width: 20%;">Manpage (HTML)</td>
</tr>
<tr>
<td class="green"><code>alias</code></td>
<td class="green">Set a synonym for a command or function</td>
<td class="green">
{% highlight bash %}alias ..='cd ..'{% endhighlight %}
</td>
<td class="green"><a href="/man/alias.1p.html">alias.1p.html</a></td>
</tr>
<tr>
<td class="green"><code>cd</code></td>
<td class="green">Change directory.</td>
<td class="green">
{% highlight bash %}cd ~/Documents{% endhighlight %}
changes one's directory to /home/username/Documents.</td>
<td class="green"><a href="/man/cd.1p.html">cd.1p.html</a></td>
</tr>
<tr>
<td class="green"><code>date</code></td>
<td class="green">Outputs the date. Inputs/variables can be used to set the timezone and the format of the date given.</td>
<td class="green">This gives my local date and time in my preferred format:<br/>
{% highlight bash %}TZ="Australia/Brisbane" date +"%r %A, %d %B %Y"{% endhighlight %}
</td>
<td class="green"><a href="/man/date.1.html">date.1.html</a></td>
</tr>
<tr>
<td class="green"><code>export</code></td>
<td class="green">Set variables provided to it as environment, or global, variables.</td>
<td class="green">{% highlight bash %}export JAVA_HOME=/usr/lib/jvm/oracle-jdk-bin-1.8/bin{% endhighlight %}</td>
<td class="green"><a href="/man/export.1p.html">export.1p.html</a></td>
</tr>
<tr>
<td class="green"><code>history</code></td>
<td class="green">Outputs Bash history.</td>
<td class="green">
{% highlight bash %}history -10{% endhighlight %}
should show the last ten commands executed with Bash.</td>
<td class="green"><a href="/man/history.3.html">history.3.html</a></td>
</tr>
<tr>
<td class="green"><code>source</code></td>
<td class="green">Execute script(s) provided to it.</td>
<td class="green">{% highlight bash %}
source ~/.bashrc
{% endhighlight %}
runs the <code>~/.bashrc</code> script.
</td>
<td class="green"><a href="/man/source.n.html">source.n.html</a></td>
</tr>
</tbody>
</table>

## Conditionals
In Bash scripts conditionals use the output of a test and perform an action accordingly. Conditionals usually involve at least one of the following keywords: `case`, `if`, `else`, `elseif` and `fi`.

## Functions
Functions are essentially convenient ways we can group pieces of code together, so as to give them order and make them more logical. Quite often functions are designed to take input and use it to generate an output, or to perform a task, although some functions require no input. All Bash functions share two main things in common: the use of the word "function" and the fact the function's contents are contained within curly braces `{...}`.

## Keywords and Special Characters
**Keywords and special characters** (**KSCs**) are an important concept to understand, they are words, or symbols, that have a special, set meaning when scripting in Bash. Examples are listed in **Table 3**.
<table style="width: 100%;"><caption>Table 3: Some Keywords and Special Characters Permitted in Bash</caption>
<tbody>
<tr>
<td class="title" style="width: 10%;"><abbr title = "Keywords/Special Character">KSC</abbr></td>
<td class="title" style="width: 40%;">Meaning, or usage</td>
<td class="title" style="width: 50%;">Example(s)</td>
</tr>
<tr>
<td class="green"><code>{...}</code><br/> <code>function</code></td>
<td class="green">Used to define <a href="#Functions">functions</a>. Curly braces can also be used to just group lines of code together.</td>
<td class="green">
{% highlight bash %}
function update {
   sudo equo update && sudo equo upgrade
}
{% endhighlight %}

</pre>
</td>
</tr>
<tr>
<td class="green"><code>[...]</code><br/><code>[[...]]</code></td>
<td class="green">Used for <a href="#Tests">tests</a>, double square brackets are only available in more advanced Unix shells such as Bash, ksh and Zsh.</td>
<td class="green">
{% highlight bash %}
[[ -n $1 ]]
{% endhighlight %}
tests whether the input variable, <code>$1</code> exists.
</td>
</tr>
<tr>
<td class="green"><code>#</code></td>
<td class="green">Whatever follows is interpreted by Bash, as a comment, for human operators to read but to be left uninterpreted by Bash.</td>
<td class="green">
{% highlight bash %}
# This is a comment
{% endhighlight %}</td>
</tr>
<tr>
<td class="green"><code>!</code></td>
<td class="green">Returns the reciprocal (opposite) or negates of what follows it.</td>
<td class="green">
{% highlight bash %}
[[ $X != 3 ]]
{% endhighlight %}
(which returns 0 (true) if the variable X does not equal 3, or 1 if it is equal to 3).
</td>
</tr>
<tr>
<td class="green"><code>$</code></td>
<td class="green">Evaluates what comes after it, such as a mathematical expression in double square brackets.</td>
<td class="green"><code>echo $[3 * 2]</code> returns 6.</td>
</tr>
<tr>
<td class="green"><code>|</code></td>
<td class="green">This is called a <b>pipe</b> and it sends the output of a command through another. For example, <code>A | B</code> does A and sends its output through B.</td>
<td class="green">The following example downloads the source code tarball of the 1.1.0 release of Atom and pipes it through tar and gzip to decompress it.
<br/>
{% highlight bash %}
wget -qO- https://github.com/atom/atom/archive/v1.1.0.tar.gz | tar -xz
{% endhighlight %}</td>
</tr>
<tr>
<td class="green"><code>;</code></td>
<td class="green">Allows several commands to be executed on the same line.</td>
<td class="green">
{% highlight bash %}sudo equo update ; sudo equo upgrade{% endhighlight %}
</td>
</tr>
<tr>
<td class="green"><code>~</code></td>
<td class="green">Denotes the home directory. For example, as my username is fusion809 on my Sabayon machine, my home directory is <code>/home/fusion809</code>.</td>
<td class="green">{% highlight bash %}
cd ~
{% endhighlight %}
takes one to current user's home directory. If it is run as root it will take one to one's <code>/root</code>.</td>
</tr>
<tr>
<td class="green"><code>-</code></td>
<td class="green">Can be used as the arithmetic operator, minus, or as the previous working directory.</td>
<td class="green">{% highlight bash %}
cd -
{% endhighlight %}
takes one to one's previous working directory.</td>
</tr>
<tr>
<td class="green"><code>*</code></td>
<td class="green">Wildcard operator, can take on any value. Can also be used for multiplication.</td>
<td class="green">
If you have a directory, <code>~/VirtualBox</code> on your machine and no others starting with the prefix <code>~/Virtual</code> then:
<br/>
{% highlight bash %}
cd ~/Virtual*
{% endhighlight %}
should change your current working directory to <code>~/VirtualBox</code>.
</td>
</tr>
<tr>
<td class="green"><code>.</code></td>
<td class="green">Serves as an equivalent to the <code>source</code> builtin and as an equivalent to <code>pwd</code></td>
<td class="green">As <code>source</code> (the following will execute every file with the extension <code>.sh</code> in the <code>~/Shell</code> directory):
<br/>
{% highlight bash %}
for i in ~/Shell/*.sh
do
	. $i
done
{% endhighlight %}
whereas as <code>pwd</code>:
<br/>
{% highlight bash %}
cd .
{% endhighlight %}
which causes no change in current directory.
</td>
</tr>
<tr>
<td class="green"><code>..</code></td>
<td class="green">Denotes the parent directory</td>
<td class="green">If I am working in the <code>~/Shell</code> directory, and run:
<br/>
{% highlight bash %}
cd ..
{% endhighlight %}
my present working directory (pwd) would then be <code>~</code>, my home directory. </td>
</tr>
<tr>
<td class="green"><code>&&</code></td>
<td class="green">Executes subsequent commands, provided the preceding command(s) were executed without error. For example, <code>A && B</code> does A and then B, provided that A is executed without error. While <code>A && B && C</code> would do A, then if A returns no error, it would perform B and if A and B ran without error it would then run C.</td>
<td class="green">
{% highlight bash %}sudo equo update && sudo equo upgrade{% endhighlight %}
</td>
</tr>
<tr>
<td class="green"><code>case</code><br/> <code>esac</code></td>
<td class="green">Conditional statement, checking whether inputs match. <code>case</code> starts them and <code>esac</code> ends them.</td>
<td class="green">
{% highlight bash %}
case $X in
     [1-5])
      Message="You're not at school yet!"
     ;;
     [6-12])
      Message="You're in primary school now, enjoy!"
     ;;
     [13-17])
      Message="You're in high school now, changes are coming!"
     ;;
     [18-20]*)
      Message="You're at Uni, enjoy the freedom!"
     ;;
esac
{% endhighlight %}</td>
</tr>
<tr>
<td class="green"><code>do</code><br/> <code>done</code><br/> <code>for</code></td>
<td class="green">Used in <code>for</code> loops. <code>for</code> begins the loop, <code>do</code> enacts commands and <code>done</code> and finishes the loop.</td>
<td class="green">
{% highlight bash %}
for i in `find . -name "*.png"`
do
  optipng -o7 "$i"
done
{% endhighlight %}</td>
</tr>
<tr>
<td class="green"><code>elif</code><br/> <code>else</code><br/> <code>fi</code><br/> <code>if</code><br/> <code>then</code></td>
<td class="green">Used in <code>if</code> conditionals.</td>
<td class="green">{% highlight bash %}
if [[ -n $1 ]]
   then
     atom ~/Shell/$1.sh
   elif [[ -v $X ]]
     atom ~/Shell/$X.sh
   else
     atom ~/.bashrc
fi
{% endhighlight %}</td>
</tr>
<tr>
<td class="green"><code>in</code></td>
<td class="green">Used when dealing with lists</td>
<td class="green">This script should, if passed an argument open Atom to <code>~/Shell/$1.sh</code>, otherwise ask the user to select from the list of shell scripts in <code>~/Shell</code> of which one to open in Atom.<br/>
{% highlight bash %}
pushd ~/Shell
if [[ -n $1 ]]
   then
     atom $1.sh
   else
     select x in `find . -name "*.sh"`
     do
       atom $x
      break
     done
fi
popd
{% endhighlight %}</td>
</tr>
<tr>
<td class="green"><code>select</code></td>
<td class="green">Gets users to select from a list of options.</td>
<td class="green">{% highlight bash %}
pushd ~/Shell #moving into the ~/Shell directory
if [[ -n $1 ]]
   then
     atom $1.sh
   else
     select x in `find . -name "*.sh"`
     do
       atom $x
      break
     done
fi
popd #moving back out of the ~/Shell directory
{% endhighlight %}</td>
</tr>
</tbody>
</table>
`until`, `while` and `time` are some other keywords that are not mentioned there, as I do not know enough about them to really comment on them. Keywords can be used as variables but I would not advise this, as this can quite easily become confusing.

### Loops
Loops (which involve the `for` keyword), in Bash scripts, are used to automate the performing of tedious tasks that are sufficiently similar to one another.

### Selectors
Selectors (marked by the `select` keyword) gives users choices as to which input(s) the rest of the selector block uses.

### Tests
Tests are essential for conditionals. As their name suggests, they test to see whether or not a condition is satisfied. If the condition is satisfied they return 0, while if the condition is unsatisfied they return 1. Square brackets (which are a builtin, by-the-way), `[...]`, are used for tests, although double square brackets (`[[...]]`) can also be used for this purpose since Bash 2.02. The difference, from what I can tell, between single and double square brackets is that double square brackets allow one to perform more advanced tests than single square brackets. Single square brackets are also POSIX compliant and are found on all Unix shells.[^5]

### Variables
Bash **variables** are defined using equal signs. They can be made global (making them available for all processes) or local (making them available just for the script at hand). Local variables are defined by just using an equal sign, for example:
{% include Code/codeu.html line1="PYTHONPATH=/usr/bin/python" %}
while to define this variable globally, one would run:
{% include Code/codeu.html line1="export PYTHONPATH=/usr/bin/python" %}
