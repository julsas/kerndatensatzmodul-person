RuleSet: Translation(path, language, translation)
* {path}.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* {path}.extension[=].extension[0].url = "lang"
* {path}.extension[=].extension[0].valueCode = #{language}
* {path}.extension[=].extension[1].url = "content"
* {path}.extension[=].extension[1].valueString = "{translation}"
* {path}.extension[=].extension[1].valueString.extension[http://hl7.org/fhir/StructureDefinition/obligation].extension[code].valueCode = #SHALL:display
* {path}.extension[=].extension[1].valueString.extension[http://hl7.org/fhir/StructureDefinition/obligation].extension[actor].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ActorDefinition/HealthResearchDataPortal"