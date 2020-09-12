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
 *     OEM Table ID     "BATT"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200110 (538968336)
 */
DefinitionBlock ("", "SSDT", 2, "WEI756", "BATT", 0x00001000)
{
    External (_SB_.PCI0.LPCB.H_EC, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC.EPTS, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.BISF, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.CSMF, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.DCBE, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.ACEX, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.TIST, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.TUBI, IntObj)
    External (_SB_.PCI0.LPCB.H_EC.TZCH, MethodObj)
    External (_SB_.PCI0.LPCB.H_EC.BAT1, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC.BAT1.XBIX, MethodObj)
    External (_SB_.PCI0.LPCB.H_EC.BAT1._XTP, MethodObj)
    External (_SB_.PCI0.LPCB.H_EC.BAT1._XST, MethodObj)
    External (_SB_.PCI0.LPCB.H_EC.BAT1.STAT, PkgObj)
    External (_SB_.PCI0.LPCB.H_EC.BAT1.BIFP, PkgObj)
    External (_SB_.PCI0.LPCB.H_EC.BAT1.BIXP, PkgObj)
    External (_SB_.PCI0.LPCB.H_EC._X66, MethodObj)
    External (_SB_.SCAI.NTCA, MethodObj)
    External (_SB_.XPTS, MethodObj)
    External (_SB_.XWAK, MethodObj)
    External (_SB_.CMDD, MethodObj)
    External (_SB_.GPC0, MethodObj)
    External (_SB_.SPC0, MethodObj)
    External (_SB_.PBTN, FieldUnitObj)
    External (_SB_.PWRB, DeviceObj)
    External (_SB_.LID0, DeviceObj)
    External (ECON, FieldUnitObj)
    External (PWRS, FieldUnitObj)
    External (RELT, FieldUnitObj)
    External (BFCC, FieldUnitObj)
    External (NVGF, FieldUnitObj)
    External (SDCK, FieldUnitObj)
    External (GSSB, MethodObj)
    External (GSSW, MethodObj)
    External (D8XH, MethodObj)
    External (CCRN, MethodObj)
    External (LIDS, UnknownObj)
    External (IGDS, UnknownObj)
    External (_SB_.PCI0.GFX0.CLID, UnknownObj)

    Scope (\_SB.PCI0.LPCB.H_EC)
    {
        If (_OSI ("Darwin"))
        {
            OperationRegion (XCR, EmbeddedControl, Zero, 0xFF)
            Field (XCR, ByteAcc, Lock, Preserve)
            {
                Offset (0x91), 
                TPC0,8,TPC1,8, 
                Offset (0xA0), 
                BRR0,8,BRR1,8,BRR2,8,BRR3,8, 
                BPV0,8,BPV1,8,BPV2,8,BPV3,8, 
                Offset (0xB0), 
                BAF0,8,BAF1,8,BAF2,8,BAF3,8, 
                BVL0,8,BVL1,8,BVL2,8,BVL3,8, 
                Offset (0xD0), 
                YLC0,8,YLC1,8
            }
        }
        
        Scope(BAT1)
        {
            Method (SBIX, 0, Serialized)
            {
                If (_OSI ("Darwin"))
                {
                If ((\ECON == Zero))
                {
                    Local0 = Zero
                    Local0 = \GSSW (0x82, 0xB0)
                    If ((Local0 == 0xFFFF))
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIFP [One] = 0xFFFFFFFF
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x02] = 0xFFFFFFFF
                    }
                    Else
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIFP [One] = Local0
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x02] = Local0
                    }

                    Local0 = Zero
                    Local0 = \GSSW (0x82, 0xB2)
                    If ((Local0 == 0xFFFF))
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIFP [0x02] = 0xFFFFFFFF
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x03] = 0xFFFFFFFF
                    }
                    Else
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIFP [0x02] = Local0
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x03] = Local0
                    }

                    Local0 = Zero
                    Local0 = \GSSW (0x82, 0xB4)
                    If ((Local0 == 0xFFFF))
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIFP [0x04] = 0xFFFFFFFF
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x05] = 0xFFFFFFFF
                    }
                    Else
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIFP [0x04] = Local0
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x05] = Local0
                    }

                    Local0 = Zero
                    Local0 = \GSSW (0x82, 0xB6)
                    If ((Local0 == 0xFFFF))
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIFP [0x05] = Zero
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x06] = Zero
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIFP [0x06] = Zero
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x07] = Zero
                    }
                    Else
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIFP [0x05] = Local0
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x06] = Local0
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIFP [0x06] = Local0
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x07] = Local0
                    }

                    If ((\RELT == 0xBA))
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIFP [0x05] = Zero
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x06] = Zero
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIFP [0x06] = Zero
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x07] = Zero
                    }

                    Local0 = Zero
                    Local0 = \GSSW (0x82, 0xD0)
                    If ((Local0 == 0xFFFF))
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x08] = Zero
                    }
                    Else
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x08] = Local0
                    }
                }
                Else
                {
                    Local3 = B1B4(BAF0,BAF1,BAF2,BAF3) /* \_SB_.PCI0.LPCB.H_EC.B1AF */
                    Local4 = B1B4(BVL0,BVL1,BVL2,BVL3) /* \_SB_.PCI0.LPCB.H_EC.B1VL */
                    Local0 = Local3
                    Local0 &= 0xFFFF
                    Local1 = (Local0 << 0x08)
                    Local1 &= 0xFF00
                    Local0 >>= 0x08
                    Local0 |= Local1
                    If ((Local0 == 0xFFFF))
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIFP [One] = 0xFFFFFFFF
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x02] = 0xFFFFFFFF
                    }
                    Else
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIFP [One] = Local0
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x02] = Local0
                    }

                    Local0 = Local3
                    Local0 >>= 0x10
                    Local0 &= 0xFFFF
                    Local1 = (Local0 << 0x08)
                    Local1 &= 0xFF00
                    Local0 >>= 0x08
                    Local0 |= Local1
                    If ((Local0 == 0xFFFF))
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIFP [0x02] = 0xFFFFFFFF
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x03] = 0xFFFFFFFF
                    }
                    Else
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIFP [0x02] = Local0
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x03] = Local0
                    }

                    Local0 = Local4
                    Local0 &= 0xFFFF
                    Local1 = (Local0 << 0x08)
                    Local1 &= 0xFF00
                    Local0 >>= 0x08
                    Local0 |= Local1
                    If ((Local0 == 0xFFFF))
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIFP [0x04] = 0xFFFFFFFF
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x05] = 0xFFFFFFFF
                    }
                    Else
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIFP [0x04] = Local0
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x05] = Local0
                    }

                    Local0 = Local4
                    Local0 >>= 0x10
                    Local0 &= 0xFFFF
                    Local1 = (Local0 << 0x08)
                    Local1 &= 0xFF00
                    Local0 >>= 0x08
                    Local0 |= Local1
                    If ((Local0 == 0xFFFF))
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIFP [0x05] = 0xFFFFFFFF
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x06] = 0xFFFFFFFF
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIFP [0x06] = 0xFFFFFFFF
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x07] = 0xFFFFFFFF
                    }
                    Else
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIFP [0x05] = Local0
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x06] = Local0
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIFP [0x06] = Local0
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x07] = Local0
                    }

                    If ((\RELT == 0xBA))
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIFP [0x05] = Zero
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x06] = Zero
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIFP [0x06] = Zero
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x07] = Zero
                    }

                    Local0 = B1B2(YLC0,YLC1) /* \_SB_.PCI0.LPCB.H_EC.CYLC */
                    Local0 &= 0xFFFF
                    Local1 = (Local0 << 0x08)
                    Local1 &= 0xFF00
                    Local0 >>= 0x08
                    Local0 |= Local1
                    If ((Local0 == 0xFFFF))
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x08] = Zero
                    }
                    Else
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.BIXP [0x08] = Local0
                    }
                }

                Return (\_SB.PCI0.LPCB.H_EC.BAT1.BIFP) /* \_SB_.PCI0.LPCB.H_EC.BAT1.BIFP */
                }
                Else
                {
                    Return (\_SB.PCI0.LPCB.H_EC.BAT1.XBIX ())
                }
            }
            
            Method (_BTP, 1, Serialized)  // _BTP: Battery Trip Point
            {
                If (_OSI ("Darwin"))
                {
                    Local0 = Arg0
                    If ((\ECON == Zero))
                    {
                        Local0 <<= 0x08
                        Local0 &= 0x00FFFF00
                        Local0 |= 0x91
                        \GSSW (0x84, Local0)
                    }
                    Else
                    {
                        Local0 &= 0xFFFF
                        Local1 = (Local0 << 0x08)
                        Local1 &= 0xFF00
                        Local0 >>= 0x08
                        Local0 |= Local1
                        TPC1 = (Local0 >> 0x08)
                        TPC0 = Local0 - (TPC1 << 0x08)
                    }
                }
                Else
                {
                    \_SB.PCI0.LPCB.H_EC.BAT1._XTP(Arg0)
                }
            }
            
            Method (_BST, 0, Serialized)  // _BST: Battery Status
            {
                If (_OSI ("Darwin"))
                {
                If ((\ECON == Zero))
                {
                    Local0 = Zero
                    Local0 = \GSSB (0x81, 0x84)
                    If (((Local0 != Zero) && (Local0 != 0x05)))
                    {
                        If ((\PWRS == One))
                        {
                            Local1 = Zero
                            Local1 = \GSSB (0x81, 0x9F)
                            If ((Local1 == 0x81))
                            {
                                Local0 = One
                            }
                            Else
                            {
                                Local0 = 0x02
                            }
                        }
                        Else
                        {
                            Local0 = One
                        }
                    }

                    \_SB.PCI0.LPCB.H_EC.BAT1.STAT [Zero] = Local0
                    Local0 = Zero
                    Local0 = \GSSW (0x82, 0xA4)
                    If ((Local0 == 0xFFFF))
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.STAT [One] = 0xFFFFFFFF
                    }
                    Else
                    {
                        If ((Local0 >= 0x8000))
                        {
                            Local0 ^= 0xFFFF
                            Local0++
                        }

                        \_SB.PCI0.LPCB.H_EC.BAT1.STAT [One] = Local0
                    }

                    Local0 = Zero
                    Local0 = \GSSW (0x82, 0xA2)
                    If ((Local0 == 0xFFFF))
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.STAT [0x02] = 0xFFFFFFFF
                    }
                    Else
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.STAT [0x02] = Local0
                    }

                    Local0 = Zero
                    Local0 = \GSSW (0x82, 0xA6)
                    If ((Local0 == 0xFFFF))
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.STAT [0x03] = 0xFFFFFFFF
                    }
                    Else
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.STAT [0x03] = Local0
                    }
                }
                Else
                {
                    Local3 = B1B4(BRR0,BRR1,BRR2,BRR3) /* \_SB_.PCI0.LPCB.H_EC.B1RR */
                    Local0 = Local3
                    Local0 &= 0xFF
                    If (((Local0 != Zero) && (Local0 != 0x05)))
                    {
                        If ((\PWRS == One))
                        {
                            If ((\_SB.PCI0.LPCB.H_EC.EPTS == 0x81))
                            {
                                Local0 = One
                            }
                            Else
                            {
                                Local0 = 0x02
                            }
                        }
                        Else
                        {
                            Local0 = One
                        }
                    }

                    \_SB.PCI0.LPCB.H_EC.BAT1.STAT [Zero] = Local0
                    Local0 = Local3
                    Local0 >>= 0x10
                    Local0 &= 0xFFFF
                    Local1 = (Local0 << 0x08)
                    Local1 &= 0xFF00
                    Local0 >>= 0x08
                    Local0 |= Local1
                    If ((Local0 == 0xFFFF))
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.STAT [0x02] = 0xFFFFFFFF
                    }
                    Else
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.STAT [0x02] = Local0
                    }

                    Sleep (0x64)
                    Local4 = B1B4(BPV0,BPV1,BPV2,BPV3) /* \_SB_.PCI0.LPCB.H_EC.B1PV */
                    Local0 = Local4
                    Local0 &= 0xFFFF
                    Local1 = (Local0 << 0x08)
                    Local1 &= 0xFF00
                    Local0 >>= 0x08
                    Local0 |= Local1
                    If ((Local0 == 0xFFFF))
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.STAT [One] = 0xFFFFFFFF
                    }
                    Else
                    {
                        If ((Local0 >= 0x8000))
                        {
                            Local0 ^= 0xFFFF
                            Local0++
                        }

                        \_SB.PCI0.LPCB.H_EC.BAT1.STAT [One] = Local0
                    }

                    Local0 = Local4
                    Local0 >>= 0x10
                    Local0 &= 0xFFFF
                    Local1 = (Local0 << 0x08)
                    Local1 &= 0xFF00
                    Local0 >>= 0x08
                    Local0 |= Local1
                    If ((Local0 == 0xFFFF))
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.STAT [0x03] = 0xFFFFFFFF
                    }
                    Else
                    {
                        \_SB.PCI0.LPCB.H_EC.BAT1.STAT [0x03] = Local0
                    }
                }

                Return (\_SB.PCI0.LPCB.H_EC.BAT1.STAT) /* \_SB_.PCI0.LPCB.H_EC.BAT1.STAT */
                }
                Else
                {
                    Return (\_SB.PCI0.LPCB.H_EC.BAT1._XST ())
                }
            }
        }
        
        Method (_Q66, 0, Serialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.H_EC.BAT1, 0x80) // Status Change
                Local0 = B1B4(BRR0,BRR1,BRR2,BRR3) /* \_SB_.PCI0.LPCB.H_EC.B1RR */
                Local0 >>= 0x08
                Local0 &= 0xFF
                Local0 %= 0x0A
                If ((Local0 == Zero))
                {
                    \_SB.SCAI.NTCA (0x61)
                }
            }
            Else
            {
                \_SB.PCI0.LPCB.H_EC._X66()
            }
            
        }
    }
    
    Scope (_SB)
    {
        Method (QPTS, 1, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
            \D8XH (Zero, Arg0)
            If ((Arg0 == 0x03)){}
            If ((Arg0 == 0x04)){}
            If ((Arg0 == 0x05))
            {
                \_SB.PCI0.LPCB.H_EC.BISF |= One
            }

            If (((Arg0 == 0x03) || (Arg0 == 0x04)))
            {
                Local0 = B1B4(\_SB.PCI0.LPCB.H_EC.BAF0,\_SB.PCI0.LPCB.H_EC.BAF1,\_SB.PCI0.LPCB.H_EC.BAF2,\_SB.PCI0.LPCB.H_EC.BAF3) /* \_SB_.PCI0.LPCB.H_EC.B1AF */
                Local0 >>= 0x10
                Local0 &= 0xFFFF
                \BFCC = Local0
            }

            \_SB.PCI0.LPCB.H_EC.CSMF = Zero
            \NVGF = Zero
            \SDCK = \_SB.PCI0.LPCB.H_EC.DCBE /* \_SB_.PCI0.LPCB.H_EC.DCBE */
            Name (EBUF, Buffer (0x1E){})
            If (((Arg0 == 0x04) || (Arg0 == 0x05)))
            {
                EBUF [Zero] = 0xE1
                If ((Arg0 == 0x05))
                {
                    EBUF [One] = 0xBC
                }
                Else
                {
                    EBUF [One] = 0xF8
                }

                \_SB.CMDD (0x9F, 0x02, EBUF)
            }

            While (!(\_SB.PBTN & 0x02))
            {
                Sleep (0x64)
            }
            }
            Else
            {
                \_SB.XPTS (Arg0)
            }
        }

        Method (QWAK, 1, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
            If ((Arg0 == 0x03))
            {
                If ((\RELT == 0xBA))
                {
                    Notify (\_SB.PWRB, 0x02) // Device Wake
                }
            }

            If ((Arg0 == 0x04))
            {
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            If ((\_SB.PCI0.LPCB.H_EC.ACEX != \PWRS))
            {
                \PWRS = \_SB.PCI0.LPCB.H_EC.ACEX /* \_SB_.PCI0.LPCB.H_EC.ACEX */
                \CCRN ()
            }

            If (((Arg0 == 0x03) || (Arg0 == 0x04)))
            {
                Local0 = One
            }

            If ((Local0 != \LIDS))
            {
                \LIDS = Local0
                If (\IGDS)
                {
                    If ((\LIDS == Zero))
                    {
                        \_SB.PCI0.GFX0.CLID = 0x80000000
                    }

                    If ((\LIDS == One))
                    {
                        \_SB.PCI0.GFX0.CLID = 0x80000003
                    }
                }

                Notify (\_SB.LID0, 0x80) // Status Change
            }

            Local0 = B1B4(\_SB.PCI0.LPCB.H_EC.BAF0,\_SB.PCI0.LPCB.H_EC.BAF1,\_SB.PCI0.LPCB.H_EC.BAF2,\_SB.PCI0.LPCB.H_EC.BAF3) /* \_SB_.PCI0.LPCB.H_EC.B1AF */
            Local0 >>= 0x10
            Local0 &= 0xFFFF
            If ((Local0 != \BFCC))
            {
                Notify (\_SB.PCI0.LPCB.H_EC.BAT1, One) // Device Check
                Notify (\_SB.PCI0.LPCB.H_EC.BAT1, 0x81) // Information Change
            }

            If ((\SDCK != \_SB.PCI0.LPCB.H_EC.DCBE))
            {
                \SDCK = \_SB.PCI0.LPCB.H_EC.DCBE /* \_SB_.PCI0.LPCB.H_EC.DCBE */
            }

            \_SB.PCI0.LPCB.H_EC.TUBI = Zero
            \_SB.PCI0.LPCB.H_EC.TZCH (\_SB.PCI0.LPCB.H_EC.TIST)
            Local0 = \_SB.GPC0 (0x04010004)
            Local1 = (Local0 & 0xFFFFFEFE)
            \_SB.SPC0 (0x04010004, Local1)
            Sleep (0x32)
            \_SB.SPC0 (0x04010004, Local0)
            \D8XH (Zero, 0xAC)
            
            }
            Else
            {
                \_SB.XPTS (Arg0)
            }
        }
    }
    
    If (_OSI ("Darwin"))
    {
        Method (B1B2, 2, NotSerialized) { Return(Or(Arg0, ShiftLeft(Arg1, 8))) }
        Method (B1B4, 4, NotSerialized)
        {
            Store(Arg3, Local0)
            Or(Arg2, ShiftLeft(Local0, 8), Local0)
            Or(Arg1, ShiftLeft(Local0, 8), Local0)
            Or(Arg0, ShiftLeft(Local0, 8), Local0)
            Return(Local0)
        }
    }
}

