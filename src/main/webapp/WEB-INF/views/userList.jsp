<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Test</title>
</head>
<body>
<h1>UserList</h1>
<div>
	{{#users}}
	<ul>
		<li>{{userNum}}</li>
		<li>{{userName}}</li>
	</ul>
	{{/users}}
</div>
</body>
</html>