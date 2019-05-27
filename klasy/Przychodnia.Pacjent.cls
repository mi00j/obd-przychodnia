Class Przychodnia.Pacjent Extends (%Persistent, %Populate, %XML.Adaptor, %ZEN.DataModel.Adaptor, Przychodnia.Osoba)
{

Property identyfikator As %Integer [ Required ];

Property adres As %String [ Required ];

Property dataUrodzenia As %Date [ Required ];

Relationship wizytyPacjenta As Przychodnia.Wizyta [ Cardinality = many, Inverse = pacjent ];

Method jakSieNazywasz() As %String
{
		Set nazwa = "Pacjent"_" "_..imie_" "_ ..nazwisko
		Return nazwa
}

Method umowWizyte(ByRef lekarz As Lekarz) As %String
{
	Set wizyta = ##class(Przychodnia.Wizyta).%New()
	Set wizyta.dataWizyty = ##class(%Library.UTC).NowUTC()
	Set wizyta.numerGabinetu = $Random(10)
	Set wizyta.wizytaAnulowana = 0
	Set wizyta.pacjent = $this
	Set wizyta.lekarz = lekarz
	Do wizyta.%Save()

	Return "Wizyta umowiona"
}

}
