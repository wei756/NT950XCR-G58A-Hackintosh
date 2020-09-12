/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200110 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLxQgBph.aml, Thu Sep 10 16:57:43 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000012C (300)
 *     Revision         0x02
 *     Checksum         0x5F
 *     OEM ID           "WEI756"
 *     OEM Table ID     "FNKEYFIX"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200110 (538968336)
 */
DefinitionBlock ("", "SSDT", 2, "WEI756", "FNKEYFIX", 0x00001000)
{
    External (_SB_.PCI0.LPCB.H_EC, DeviceObj)
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC._X63, MethodObj)
    External (_SB_.PCI0.LPCB.H_EC._X64, MethodObj)

    Scope (\_SB.PCI0.LPCB.H_EC)
    {
        Method (_Q63, 0, Serialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.PS2K, 0x0205)
                Notify (\_SB.PCI0.LPCB.PS2K, 0x0285)
            }
            Else
            {
                _X63()
            }
        }

        Method (_Q64, 0, Serialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.PS2K, 0x0206)
                Notify (\_SB.PCI0.LPCB.PS2K, 0x0286)
            }
            Else
            {
                _X64()
            }
        }
    }
}

