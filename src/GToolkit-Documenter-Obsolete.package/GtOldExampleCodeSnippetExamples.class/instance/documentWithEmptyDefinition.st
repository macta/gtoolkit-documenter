empty example definition
documentWithEmptyDefinition
	<gtExample>
	<label: 'Document with an example code snippet with empty definition'>
	| aPillarElement aDocument codeSnippet |
	aPillarElement := self pillarElementWithEmptyDefinition.
	aDocument := GtOldDocumenterExamplesUtility documentFromPillarElement: aPillarElement.
	self assert: aDocument codeSnippets size equals: 1.
	codeSnippet := aDocument codeSnippets codeSnippetAt: 1.
	self 
		assert: codeSnippet class 
		equals: GtOldDefaultCodeSnippet.
	self assert: codeSnippet result isNil.
	^ aDocument