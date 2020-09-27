# NT950XCR-G58A-Hackintosh
 Samsung Galaxy Book Ion OpenCore EFI Firmware

[English version](./README-en.md)

## 개요

삼성 갤럭시북 이온(NT950XCR-G58A)에서 사용가능한 EFI입니다.

오픈코어(OpenCore) v0.6.1을 사용합니다.

## 설치하는 법

1. Opencore guide를 따라 macOS 설치 USB를 만든 다음 EFI 폴더를 USB의 EFI 파티션에 넣습니다.
2. [내장 사운드 픽스 가이드](./Audio patch/README.md)를 참고하여 내장 사운드 기능을 픽스하세요.



## 사양

- NT950XCR-G58A
- Intel Core i5-10210u
- Intel UHD Graphics 620
- NVIDIA Geforce MX250 (비활성화)
- 1 x Samsung 8GB DDR4 2667MHz
- 1 x Samsung pm981a NVMe M.2 SSD 256 GB (윈도우용)
- 1 x Toshiba BG3 NVMe M.2 SSD 128 GB (맥 설치용)
- Intel AX201
- Realtek ALC298



## 작동하는 것

- 키보드 / 트랙패드
- 내장 스피커/이어폰 잭
- WiFi
- 블루투스
- 잠자기
- USB 포트
- 배터리 상태 확인
- 화면 밝기 조절
- 화면 커버 인식
- 전면 카메라
- 밝기 조절/볼륨 핫키
- SD/UFS 슬롯
- QE/CI
- HDMI 출력

## 안 되는 것

- 내장 마이크
- 지문인식
- 트랙패드 무선충전
- Thunderbolt 3

## BIOS 설정

- TPM Device: Off
- Secure Boot Control: Off
- Fast BIOS Mode: Off
- USB LAN PXE OPROM: Off



## EFI 구성

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

### SSDT

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



## 참고자료

- https://dortania.github.io/vanilla-laptop-guide
- https://www.tonymacx86.com/threads/guide-how-to-patch-dsdt-for-working-battery-status.116102/
- https://www.insanelymac.com/forum/topic/305030-guide-how-to-fix-brightness-hotkeys-in-dsdt/
- https://github.com/daliansky/XiaoXinPro-13-hackintosh
- https://x86.co.kr/tip/5155874
- https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1851518
- https://github.com/tkrotoff/Gigabyte-GA-Z77-DS3H-rev1.1-Hackintosh/issues/3
