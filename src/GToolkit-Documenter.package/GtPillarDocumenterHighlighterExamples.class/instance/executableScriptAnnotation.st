highlighted text
executableScriptAnnotation
	<gtExample>
	| aText |
	aText := '[[[
aResult := 4 factorial.
]]]' asRopedText.
	GtPillarDocumenterHighlighter highlight: aText.
	^ aText