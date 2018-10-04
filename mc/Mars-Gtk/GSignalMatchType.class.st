"
The match types specify what g_signal_handlers_block_matched(), g_signal_handlers_unblock_matched() and g_signal_handlers_disconnect_matched() match signals by.

https://developer.gnome.org/gobject/unstable/gobject-Signals.html#GSignalMatchType
"
Class {
	#name : #GSignalMatchType,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'G_SIGNAL_MATCH_CLOSURE',
		'G_SIGNAL_MATCH_DATA',
		'G_SIGNAL_MATCH_DETAIL',
		'G_SIGNAL_MATCH_FUNC',
		'G_SIGNAL_MATCH_ID',
		'G_SIGNAL_MATCH_UNBLOCKED'
	],
	#category : 'Mars-Gtk-Widget'
}

{ #category : #'enum declaration' }
GSignalMatchType class >> enumDecl [
	^ { 
	#G_SIGNAL_MATCH_ID	. 			1 << 0.
  	#G_SIGNAL_MATCH_DETAIL. 		1 << 1.
  	#G_SIGNAL_MATCH_CLOSURE. 	1 << 2.
  	#G_SIGNAL_MATCH_FUNC. 		1 << 3.
  	#G_SIGNAL_MATCH_DATA. 		1 << 4.
  	#G_SIGNAL_MATCH_UNBLOCKED. 	1 << 5	.
	}
]