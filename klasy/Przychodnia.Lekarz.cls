Class Przychodnia.Lekarz Extends (%Persistent, %Populate, %XML.Adaptor, %ZEN.DataModel.Adaptor, Przychodnia.Osoba)
{

Property identyfikator As %Integer [ Required ];

Property tytulLekarski As %String [ Required ];

Property stazPracy As %Integer [ Required ];

Relationship oddzial As Przychodnia.Oddzial [ Cardinality = one, Inverse = lekarze ];

Relationship wizytyLekarza As Przychodnia.Wizyta [ Cardinality = many, Inverse = lekarz ];

Method jakSieNazywasz() As %String
{
		Set nazwa = ..tytulLekarski_" "_..imie_" "_..nazwisko
		Return nazwa
}

}
