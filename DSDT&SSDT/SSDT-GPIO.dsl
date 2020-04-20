// Source: https://github.com/daliansky/OC-little
DefinitionBlock("", "SSDT", 2, "ACDT", "GPI0", 0)
{
    External(GPHD, FieldUnitObj)
    
    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            GPHD = Zero
        }
    }
}