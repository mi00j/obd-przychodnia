Class Przychodnia.Osoba [ Abstract ]
{

Property imie As %String [ Required ];

Property nazwisko As %String [ Required ];

Method jakSieNazywasz() As %String
{
		Set nazwa = ..imie_" "_..nazwisko
		Return nazwa
}

}
