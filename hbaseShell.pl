#!/usr/bin/perl -w

use CGI qw(:standard);

print header();
print <<WEB_PAGE
<html>
<head>
<link href="/css/bootstrap.css" rel="stylesheet">
<title>HBase Shell - Production</title>
</head>
<body>

<div class="container">
<h2>HBase Shell</h2>
<hr width=715 align=left>
<br>
<form method="post"
action="http://prod-hbase-01:80/cgi-bin/results.pl">
<P>
Please select type of query and specify parameters</P>
<br>
<select name="method" class="span2">
<option value="get">get</option>
<option value="scan">scan</option>
<option value="list">list</option>
<option value="count">count</option>
<option value="describe">describe</option>
</select>
<input type="text" style="padding: 2px;height: 30px;" class="span5" name="command" size="80"><p>
<br>
<br>
<input type="submit" class="btn btn-primary"  value="Submit">
<input type="reset" class="btn" value="Reset">
</form>
</div>
</body>
<script src="/js/jquery.js"></script>
<script src="/js/bootstrap.min.js"></script>
</html>
WEB_PAGE
