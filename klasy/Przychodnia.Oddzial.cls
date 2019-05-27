Class Przychodnia.Oddzial Extends (%Persistent, %Populate, %XML.Adaptor, %ZEN.DataModel.Adaptor)
{

Property identyfikator As %Integer [ Required ];

Property liczbaGabinetow As %Integer [ Required ];

Property nazwaOddzialu As Przychodnia.NazwaOddzialu [ Required ];

Relationship lekarze As Przychodnia.Lekarz [ Cardinality = many, Inverse = oddzial ];

Method podajLiczbeGabinetow() As %Integer
{
	set liczbaGabinetow = ..liczbaGabinetow
	return liczbaGabinetow
}
}
