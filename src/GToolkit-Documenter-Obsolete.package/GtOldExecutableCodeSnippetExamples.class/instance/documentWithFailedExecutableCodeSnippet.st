failed executable code snippet
documentWithFailedExecutableCodeSnippet
	<gtExample>
	<label: 'Document with an executable code snippet'>
	| aPillarElement aDocument codeSnippet |
	aPillarElement := self pillarElementWithFailedExecutableCodeSnippet.
	aDocument := GtOldDocumenterExamplesUtility documentFromPillarElement: aPillarElement.
	self assert: aDocument codeSnippets size equals: 1.
	codeSnippet := aDocument codeSnippets codeSnippetAt: 1.
	self 
		assert: codeSnippet class 
		equals: GtOldExecutableCodeSnippet.
	self assert: codeSnippet result isNil.
	^ aDocument