class definition
documentWithClassDefinition
	<gtExample>
	<label: 'Document with an example code snippet with class definition'>
	| aPillarElement aDocument codeSnippet |
	aPillarElement := self pillarElementWithClassDefinition.
	aDocument := GtOldDocumenterExamplesUtility documentFromPillarElement: aPillarElement.
	self assert: aDocument codeSnippets size equals: 1.
	codeSnippet := aDocument codeSnippets codeSnippetAt: 1.
	self 
		assert: codeSnippet class 
		equals: GtOldEpiceaCodeSnippet.
	self assert: codeSnippet result isNil.
	^ aDocument