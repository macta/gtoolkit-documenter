out bindings
setEmptyCodeSnippetResult
	<gtExample>
	<label: 'Set result of empty code snippet bindings'>
	| bindings result |
	bindings := self outBindings.
	bindings addNamed: self variableOneName value: 42.
	result := bindings
		bindingOf: self variableOneName.
	self assert: result isNil.
	^ bindings