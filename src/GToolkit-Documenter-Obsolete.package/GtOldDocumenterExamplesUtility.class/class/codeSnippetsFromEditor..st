utility - accessing
codeSnippetsFromEditor: aBrTextEditor 
	<return: #Array of: #GtOldCodeSnippetResult>
	| outs |
	outs := self outsFromEditor: aBrTextEditor.
	^ Array new: outs size streamContents: [ :aStream | 
		1 to: outs size do: [ :anIndex | | aSnippet |
			aSnippet := outs codeSnippetAt: anIndex.
			aStream nextPut: aSnippet.
			self assert: aSnippet index equals: anIndex ] ]