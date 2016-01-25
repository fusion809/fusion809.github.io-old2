{% capture mycapture %}
## Writing Posts
`_posts` is the folder in which one's completed posts go, while `_drafts` is where one's draft posts go. [Here](http://jekyllrb.com/docs/posts/) is the official documentation on writing posts. [Here](http://jekyllrb.com/docs/drafts/) is the official documentation on working with drafts. By default Jekyll does not build drafts, unless the `--drafts` switch is passed to the `jekyll serve` command. In other words, if you use Bundler to run Jekyll, like I outlined in the [Running Jekyll Locally](#running-jekyll-locally) section, the command you should run to build the drafts too is:
{% include Code/codeu.html line1="bundle exec jekyll serve --drafts" %}
posts (both completed and drafts) can be written in markdown or HTML, by default, although with the use of extra extensions it is possible for Jekyll to work with textfile and other post formats. Regardless of what file format is used for posts, however, all completed posts in the `_posts` folder must have the name format: `YEAR-MONTH-DAY-title.MARKUP` where `.MARKUP` is dependent on the post's file extension (e.g., it could take the form `.md` for markdown posts), while `YEAR-MONTH-DAY` should be the date the post is published and `title` should be the post's title, delimitered by dashes (`-`). All of these are overridden by the YAML front matter's values.

All posts should include the YAML front matter, which is explained in greater detail [here](http://jekyllrb.com/docs/frontmatter/). It is essentially all the metadata for your post, like the date it is published, its title, its layout (which must appear in the `_layouts`) folder, *etc.* and appears at the start of the post. As previously mentioned if they conflict with the date the post was published and its title as provided by the post's file name, the values in the YAML front matter will be used instead.
{% endcapture %}{{ mycapture | markdownify }}