## Summary
{% include_relative 07-table1.html %}

### Categories
{% include Layouts/note.md note1="Some categories are not mentioned here as their definition is obvious based on their name." %}
<ul>
  {% for row in site.data.repositories.foot %}
  <li><b>{{ row.category }}</b>: {{ row.description | markdownify }}</li>
  {% endfor %}
</ul>
