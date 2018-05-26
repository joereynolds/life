### Extract to class

If a rule is repeated, extract it to a class and use that instead.

From:
```
#system-admin-icon
{
	display:block;
	width:160px;
	height:160px;
	background-image:url( '/static/images/admin_export.png' );
}

#system-thor-icon
{
	display:block;
	width:160px;
	height:160px;
	background-image:url( '/static/images/thor_export.png' );
}

#system-toms-icon
{
	display:block;
	width:160px;
	height:160px;
	background-image:url( '/static/images/toms_export.png' );
}
```

To
```
.system-icon {
	display:block;
	width:160px;
	height:160px;
}

#system-admin-icon {
	background-image:url( '/static/images/admin_export.png' );
}

#system-thor-icon {
	background-image:url( '/static/images/thor_export.png' );
}

#system-toms-icon {
	background-image:url( '/static/images/toms_export.png' );
}
```

Why?

Classes encourage reusability and modularity.
