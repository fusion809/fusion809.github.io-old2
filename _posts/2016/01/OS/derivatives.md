[<div class="derivatives">DistroWatch search for derivatives of {{ include.os }}{% if include.excluding %}excluding derivatives of {{ include.excluding }}{% endif %}</div>](http://distrowatch.com/search.php?ostype=Linux&category=All&origin=All&basedon={{ include.os }}&notbasedon={% if include.excluding %}{{ include.excluding }}{% else %}None{% endif %}&desktop=All&architecture=All&package=All&rolling=All&isosize=All&netinstall=All&status=Active)