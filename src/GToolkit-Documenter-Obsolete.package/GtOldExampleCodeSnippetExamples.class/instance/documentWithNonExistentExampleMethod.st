non-existent example method
documentWithNonExistentExampleMethod
	<gtExample>
	<label: 'Document with an example code snippet with non-existent example method'>
	| aPillarElement aDocument codeSnippet |
	aPillarElement := self pillarElementWithNonExistentExampleMethod.
	aDocument := GtOldDocumenterExamplesUtility documentFromPillarElement: aPillarElement.
	self assert: aDocument codeSnippets size equals: 1.
	codeSnippet := aDocument codeSnippets codeSnippetAt: 1.
	self 
		assert: codeSnippet class 
		equals: GtOldExampleCodeSnippet.
	self assert: codeSnippet result isNil.
	^ aDocument