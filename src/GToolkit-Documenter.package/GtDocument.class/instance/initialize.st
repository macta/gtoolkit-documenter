initialization
initialize
	super initialize.
	documentParts := GtDocumentParts new.
	globalBindings := GtDocumentBindings new.
	globalBindings 
		addNamed: GtDocumenterConstants resultsVariableName 
		value: documentParts.
	systemChangesHandler := GtSystemChangesHandler new.