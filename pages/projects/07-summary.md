<h2 id="summary" class="clickable-header top-level-header">Summary</h2>

{% include_relative 07a-table1.html %}

{% include_relative 07b-table2.html %}
<ul>
  {% for row in site.data.repositories.foot %}
  <li><b>{{ row.category }}</b>: {{ row.description | markdownify }}</li>
  {% endfor %}
</ul>
