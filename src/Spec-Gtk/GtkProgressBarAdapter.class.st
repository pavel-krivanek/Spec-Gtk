Class {
	#name : #GtkProgressBarAdapter,
	#superclass : #GtkAdapter,
	#category : #'Spec-Gtk-Adapter'
}

{ #category : #building }
GtkProgressBarAdapter >> addModelTo: gtkProgressBar [ 

	| provider context | 
	provider := GtkCssProvider newFromString: ' progress, trough { min-height: 20px; margin: 5px; }'.

	context := gtkProgressBar styleContext.
	context addProvider: provider.
	
	gtkProgressBar progress: self presenter state value.
	
	self presenter adapter 
		ifNotNil: [:oldAdapter | 
			oldAdapter unsubscribe ].
	
	self presenter whenValueChangedDo: [ :val |
		gtkProgressBar progress: val value asFloat.
		 ]
]

{ #category : #api }
GtkProgressBarAdapter >> fixedValue: aNumber [

	self innerWidgetDo: [ :w | 
		w progress: aNumber asFloat ]
]

{ #category : #api }
GtkProgressBarAdapter >> indeterminateValue [

	self innerWidgetDo: [ :w | 
		w pulse ]
]

{ #category : #api }
GtkProgressBarAdapter >> updateState [

	self presenter state ifNil: [ ^ self ].
	
	self presenter state applyTo: self.
	GRunLoop current isInCallback 
		ifTrue: [ GtkPollingRunLoop new processEvents ]
]

{ #category : #building }
GtkProgressBarAdapter >> widgetClass [

	^ GtkProgressBar
]
