editing live document
pillarElementWithTwoCodeSnippets
	<gtExample>
	<label: 'Pillar Bloc element'>
	| rootDocument pillarElement |
	rootDocument := self rootDocumentForAddingAndRemovingCodeSnippets.
	pillarElement := GtOldDocumenterExamplesUtility pillarElementForPillarFileReference: rootDocument.
	self assert: pillarElement document outs size equals: 2.
	^ pillarElement