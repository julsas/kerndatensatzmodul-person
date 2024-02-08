Profile: MII_PR_Person_Patient
Parent: Patient
Id: mii-pr-person-patient
Title: "MII PR Person Patient"
Description: "Dieses Profil beschreibt eine Patient*in in der Medizininformatik-Initiative."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient"
* insert PR_CS_VS_Version
* insert Publisher
* ^date = "2024-02-08"
* obeys mii-pat-1
* id MS
* meta MS
//* meta.source MS
* meta.profile MS
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    versichertenId_GKV 0..1 MS and
    pid 0..* MS and
    versichertennummer_pkv 0..1 MS
* identifier[versichertenId_GKV] only IdentifierKvid10
* identifier[versichertenId_GKV] ^patternIdentifier.type = $identifier-type-de-basis#GKV
* identifier[versichertenId_GKV].type 1.. MS
* identifier[versichertenId_GKV].system MS
* identifier[versichertenId_GKV].value MS
* identifier[versichertenId_GKV].assigner 1.. MS
* identifier[versichertenId_GKV].assigner.identifier 1.. MS
* identifier[versichertenId_GKV].assigner.identifier only IdentifierIknr
* identifier[versichertenId_GKV].assigner.identifier.type MS
* identifier[versichertenId_GKV].assigner.identifier.system MS
* identifier[versichertenId_GKV].assigner.identifier.value MS
* identifier[pid] only IdentifierPid
* identifier[pid] ^patternIdentifier.type = $v2-0203#MR
* identifier[pid].type 1.. MS
* identifier[pid].system MS
* identifier[pid].value MS
* identifier[pid].assigner only $MII-Reference
* identifier[pid].assigner MS
* identifier[pid].assigner.identifier.type = $v2-0203#XX
* identifier[pid].assigner.identifier.type MS
* identifier[pid].assigner.identifier.system obeys mii-pat-2
* identifier[versichertennummer_pkv] only IdentifierPkv
* identifier[versichertennummer_pkv] ^patternIdentifier.type = $identifier-type-de-basis#PKV
* identifier[versichertennummer_pkv].use MS
* identifier[versichertennummer_pkv].type 1.. MS
* identifier[versichertennummer_pkv].value MS
* identifier[versichertennummer_pkv].assigner MS
* identifier[versichertennummer_pkv].assigner.identifier.type MS
* identifier[versichertennummer_pkv].assigner.identifier.system MS
* identifier[versichertennummer_pkv].assigner.identifier.value MS
* identifier[versichertennummer_pkv].assigner.display MS
* name 0..* MS
* name ^slicing.discriminator.type = #pattern
* name ^slicing.discriminator.path = "$this"
* name ^slicing.rules = #open
* name contains
    name 0..1 MS and
    geburtsname 0..1 MS
* name[name] only HumannameDeBasis
* name[name] ^patternHumanName.use = #official
* name[name].use 1.. MS
* name[name].family 1.. MS
* name[name].family.extension[namenszusatz] MS
* name[name].family.extension[nachname] MS
* name[name].family.extension[vorsatzwort] MS
* name[name].given 1.. MS
* name[name].prefix MS
* name[name].prefix.extension[prefix-qualifier] MS
* name[geburtsname] only HumannameDeBasis
* name[geburtsname] ^patternHumanName.use = #maiden
* name[geburtsname].use 1.. MS
* name[geburtsname].family 1.. MS
* name[geburtsname].family.extension[namenszusatz] MS
* name[geburtsname].family.extension[nachname] MS
* name[geburtsname].family.extension[vorsatzwort] MS
* name[geburtsname].given ..0
* name[geburtsname].prefix ..0
* name[geburtsname].prefix.extension[prefix-qualifier] MS
* gender MS
* gender.extension contains GenderOtherDE named other-amtlich 0..1 MS
* birthDate MS
* birthDate.extension contains $data-absent-reason named data-absent-reason 0..1 MS
* deceased[x] MS
* address MS
* address ^slicing.discriminator.type = #pattern
* address ^slicing.discriminator.path = "$this"
* address ^slicing.rules = #open
* address contains
    Strassenanschrift 0..* MS and
    Postfach 0..* MS
* address[Strassenanschrift] only AddressDeBasis
* address[Strassenanschrift] ^patternAddress.type = #both
* address[Strassenanschrift].extension[Stadtteil] MS
* address[Strassenanschrift].type 1.. MS
* address[Strassenanschrift].line 1..3 MS
* address[Strassenanschrift].line.extension[Strasse] MS
* address[Strassenanschrift].line.extension[Hausnummer] MS
* address[Strassenanschrift].line.extension[Adresszusatz] MS
* address[Strassenanschrift].line.extension[Postfach] 0..0 MS
* address[Strassenanschrift].city 1.. MS
* address[Strassenanschrift].city.extension contains ExtensionDestatisAgs named gemeindeschluessel 0..1 MS
* address[Strassenanschrift].postalCode 1.. MS
* address[Strassenanschrift].country 1.. MS
* address[Strassenanschrift] obeys pat-cnt-2or3-char
* address[Postfach] only AddressDeBasis
* address[Postfach] ^patternAddress.type = #postal
* address[Postfach].extension[Stadtteil] MS
* address[Postfach].type 1.. MS
* address[Postfach].line 1..3 MS
* address[Postfach].line.extension[Strasse] 0..0
* address[Postfach].line.extension[Hausnummer] 0..0
* address[Postfach].line.extension[Adresszusatz] 0..0
* address[Postfach].line.extension[Postfach] MS
* address[Postfach].city 1.. MS
* address[Postfach].city.extension contains ExtensionDestatisAgs named gemeindeschluessel 0..1 MS
* address[Postfach].postalCode 1.. MS
* address[Postfach].country 1.. MS
* address[Postfach] obeys pat-cnt-2or3-char
* link MS
* link.other only $MII-Reference
* link.other MS
* link.type MS