accessing
remove: widget
	self ffiCall: #(void gtk_container_remove (self, GtkWidget widget ))