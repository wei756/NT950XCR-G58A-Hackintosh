# NT950XCR-G58A-Hackintosh
 Samsung Galaxy Book Ion OpenCore EFI Firmware

## Summary

OpenCore EFI for Samsung GalaxyBook Ion(NT950XCR-G58A)

OC Version: v0.6.1

### Kexts

- [ACPIPoller](https://github.com/RehabMan/OS-X-ACPI-Poller) : lid fix
- [AppleALC](https://github.com/acidanthera/AppleALC) v1.5.2 : audio fix
- [AirportItlwm](https://github.com/OpenIntelWireless/itlwm) v1.0.0 : ax201 fix
- [CodecCommander](https://bitbucket.org/RehabMan/os-x-eapd-codec-commander) v2018-1003 : int speaker/eapd fix
- [EnableLidWake](https://github.com/syscl/EnableLidWake) : lid fix
- [IntelBluetoothFirmware](https://github.com/OpenIntelWireless/IntelBluetoothFirmware) v1.1.2 : bluetooth fix
- [IntelBluetoothInjector](https://github.com/OpenIntelWireless/IntelBluetoothFirmware) v1.1.2 : bluetooth fix
- [Lilu](https://github.com/acidanthera/Lilu) v1.4.7
- [NullEthernet](https://github.com/RehabMan/OS-X-Null-Ethernet)
- [NVMeFix](https://github.com/acidanthera/NVMeFix) v1.0.3 : pm981a fix
- [SMCBatteryManager](https://github.com/acidanthera/VirtualSMC) v1.1.6
- [SMCLightSensor](https://github.com/acidanthera/VirtualSMC) v1.1.6
- [SMCProcessor](https://github.com/acidanthera/VirtualSMC) v1.1.6
- [SMCSuperIO](https://github.com/acidanthera/VirtualSMC) v1.1.6
- [VirtualSMC](https://github.com/acidanthera/VirtualSMC) v1.1.6
- [VoodooI2C](https://github.com/VoodooI2C/VoodooI2C) v2.4.4 : internal trackpad fix
- [VoodooI2CHID](https://github.com/VoodooI2C/VoodooI2CHID) v2.4.4
- [VoodooPS2Controller](https://github.com/acidanthera/VoodooPS2) v2.1.6 : internal keyboard fix
- [WhateverGreen](https://github.com/acidanthera/WhateverGreen) v1.4.2

### EFI

- HfsPlus v2.1.6
- OpenCanopy
- OpenRuntime v2.1.6
- Ps2KeyboardDxe

### SSDT/DSDT

- SSDT-ALS0
- SSDT-AWAC
- SSDT-BATT : battery status patch
- SSDT-dGPU-Off : disable nvidia mx250
- SSDT-EC-USBX : fake ec, usb controller
- SSDT-FNBL : backlight control keyboard shortcuts patch
- SSDT-GPIO
- SSDT-GPRW : GPRW method hotpatch
- SSDT-HPET : hpet, irq patch
- SSDT-LIDP : for ACPIPoller
- SSDT-OSYS
- SSDT-PLUG
- SSDT-PNLF-CFL : backlight fix
- SSDT-RMNE : nullethernet patch
- SSDT-SBUS-MCHC

## How to Use

1. Copy EFI folder to your macOS Install USB
2. Following this [guide](./Audio%20patch), fix internal speaker/headphone jack.
3. Let's enjoy!



## Spec

- NT950XCR-G58A
- Intel Core i5-10210u
- Intel UHD Graphics 620
- NVIDIA Geforce MX250 (disabled on macOS)
- 1 x Samsung 8GB DDR4 2667MHz
- 1 x Samsung pm981a NVMe M.2 SSD 256 GB (for win10)
- 1 x Toshiba BG3 NVMe M.2 SSD 128 GB (for macOS)
- Intel AX201
- Realtek ALC298


## It Works

- Keyboard / Trackpad
- Internal speaker/headphone jack
- WiFi
- Bluetooth
- Sleep
- USB ports
- Battery status
- Display backlight control
- Detect lid open
- Front cam
- Fn hot key (volume, backlight contol)
- SD/UFS Slot
- QE/CI
- HDMI output


## It doesn't work

- Internal mic
- Fingerprint sensor
- Wireless charging on trackpad
- Thunderbolt 3



## BIOS settings

- TPM Device: Off
- Secure Boot Control: Off
- Fast BIOS Mode: Off
- USB LAN PXE OPROM: Off

## References

- https://dortania.github.io/vanilla-laptop-guide
- https://www.tonymacx86.com/threads/guide-how-to-patch-dsdt-for-working-battery-status.116102/
- https://www.insanelymac.com/forum/topic/305030-guide-how-to-fix-brightness-hotkeys-in-dsdt/
- https://github.com/daliansky/XiaoXinPro-13-hackintosh
- https://x86.co.kr/tip/5155874
- https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1851518
- https://github.com/tkrotoff/Gigabyte-GA-Z77-DS3H-rev1.1-Hackintosh/issues/3
