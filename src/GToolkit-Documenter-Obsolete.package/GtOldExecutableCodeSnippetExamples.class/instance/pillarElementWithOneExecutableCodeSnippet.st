executable code snippet
pillarElementWithOneExecutableCodeSnippet
	<gtExample>
	<label: 'Pillar element with an executable code snippet'>
	| fileReference pillarElement |
	fileReference := self fileReferenceWithOneExecutableCodeSnippet.
	pillarElement := GtOldDocumenterExamplesUtility pillarElementForPillarFileReference: fileReference.
	self assert: pillarElement notNil.
	^ pillarElement