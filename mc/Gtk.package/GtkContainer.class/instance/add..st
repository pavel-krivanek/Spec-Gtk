accessing
add: widget
	self ffiCall: #(void gtk_container_add (self, GtkWidget widget ))