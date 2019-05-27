Class Przychodnia.Wizyta Extends (%Persistent, %Populate, %XML.Adaptor, %ZEN.DataModel.Adaptor)
{

Property dataWizyty As %DateTime [ Required ];

Property numerGabinetu As %Integer [ Required ];

Property wizytaAnulowana As %Boolean [ Required ];

Relationship pacjent As Przychodnia.Pacjent [ Cardinality = one, Inverse = wizytyPacjenta ];

Relationship lekarz As Przychodnia.Lekarz [ Cardinality = one, Inverse = wizytyLekarza ];

Method anulujWizyte() As %String
{
		IF ..wizytaAnulowana = 1{
			Return "Nie można anulować wizyty"
		}
		ELSE
		{
			Set ..wizytaAnulowana = 1
			Do %Save()
			Return "Wizyta anulowana"
		}
}
}
