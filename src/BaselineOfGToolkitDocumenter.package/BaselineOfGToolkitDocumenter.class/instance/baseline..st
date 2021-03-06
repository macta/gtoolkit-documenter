baseline
baseline: spec
	<baseline>
	spec for: #common do: [ 
		spec
			baseline: 'Brick' with: [ spec
				repository: 'github://pharo-graphics/Brick/src';
				loads: #core ];
			baseline: 'GToolkitUtility' with: [ spec 
				repository: 'github://feenkcom/gtoolkit/src' ];
			baseline: 'GToolkitExamples' with: [ spec 
				repository: 'github://feenkcom/gtoolkit-examples/src' ];
			baseline: 'GToolkitInspector' with: [ spec
				repository: 'github://feenkcom/gtoolkit-inspector/src' ];
			baseline: 'Pillar' with: [ spec
				repository: 'github://pillar-markup/pillar/src' ];
			baseline: 'PetitParser2Core' with: [
				spec
				 	repository: 'github://kursjan/petitparser2' ];
			project: 'DeepTraverser' with: [ spec
				className: #ConfigurationOfDeepTraverser;
				versionString: #development;
				repository: 'http://smalltalkhub.com/mc/Moose/DeepTraverser/main/' ];
			package: 'GToolkit-Documenter-BrTextPetitParserCompatibility' with: [ spec requires: #( 
				#Pillar #GToolkitUtility ) ];
			package: 'Pillar2-PetitPillar' with: [ spec requires: #( 
				#'PetitParser2Core' #'Pillar' ) ];
			package: 'Pillar2-Tests-PetitPillar' with: [ spec requires: #( 
				#'Pillar2-PetitPillar' ) ];
			package: 'GToolkit-Documenter' with: [ spec requires: #( 
				#Brick #Pillar 
				#GToolkitUtility #GToolkitExamples #GToolkitInspector
				#'Pillar2-Tests-PetitPillar'
				#'GToolkit-Documenter-BrTextPetitParserCompatibility' ) ];
			package: 'GToolkit-Documenter-Exporter' with: [ spec requires: #( 
				#Brick #Pillar #GToolkitUtility 'GToolkit-Documenter' ) ];
			package: 'GToolkit-Documenter-Exporter-Tests' with: [ spec requires: #( 
				'GToolkit-Documenter-Exporter' ) ];
			package: 'GToolkit-Documenter-Epicea' with: [ spec requires: #(
				 'Brick' 'GToolkitUtility' 'GToolkit-Documenter' 'GToolkit-Documenter-Exporter' ) ];
			package: 'GToolkit-Documenter-Examples' with: [ spec requires: #( 
				'GToolkitExamples' 'GToolkit-Documenter' 'GToolkit-Documenter-Exporter'
				'GToolkit-Documenter-Epicea' ) ]
	]
