DefinitionBlock ("", "SSDT", 2, "RebMan", "LIDP", 0x00001000)
{
    External (_SB_.LID0, DeviceObj)
    External (_SB_.LID0._LID, MethodObj)
    
    If (_OSI ("Darwin"))
    {
        Device (LIDP)
        {
            Name (_HID, "FAN00000")
            Name (PLID, 0xFFFF)
            // Poll for _LID status changes, notify if different
            Method (FCPU, 0, Serialized)
            {
                Store(\_SB.LID0._LID(), Local0)
                if (LNotEqual(Local0, PLID))
                {
                    Store(Local0, PLID)
                    Notify(\_SB.LID0, 0x80)
                }
            }
        }
    }
}

