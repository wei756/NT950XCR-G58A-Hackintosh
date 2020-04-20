# NT950XCR-G58A-Hackintosh
 Samsung Galaxy Book Ion OpenCore EFI Firmware

## 개요

삼성 갤럭시북 이온(NT950XCR-G58A)에서 사용가능한 EFI입니다.

오픈코어(OpenCore) v0.5.7을 사용합니다.

### 특이사항

- 무슨 짓을 해도 사운드 안 잡힘(AppleALC + Lilu, VoodooHDA + AppleHDADisabler, Rename HDAS to HDEF 등 관련 패치 전부 작동 안 함)
- 오픈코어로 윈도우 부팅 시 절전모드 비정상 작동함

### 참고한 글

- https://dortania.github.io/OpenCore-Desktop-Guide/
- https://www.tonymacx86.com/threads/guide-how-to-patch-dsdt-for-working-battery-status.116102/
- https://www.insanelymac.com/forum/topic/305030-guide-how-to-fix-brightness-hotkeys-in-dsdt/

### Kexts

- ACPIBatteryManager v2018-1005
- AppleALC v1.4.8 : audio fix (not working)
- IntelBluetoothFirmware : bluetooth fix
- Lilu v1.4.3
- NVMeFix v1.0.2 : pm981a fix
- SMCBatteryManager v1.1.2
- SMCLightSensor v1.1.2
- SMCProcessor v1.1.2
- SMCSuperIO v1.1.2
- VirtualSMC v1.1.2
- VoodooI2C v2.4
- VoodooI2CHID v2.4
- VoodooPS2Controller v2.1.3 : internal keyboard fix
- WhateverGreen v1.3.8

### EFI

- ApfsDriverLoader v2.1.6
- HfsPlus v2.1.6
- OpenRuntime v2.1.6

### SSDT/DSDT

- DSDT : original dsdt + battery indicator fix + backlight control hotkey fix
- SSDT-AWAC
- SSDT-GPIO
- SSDT-HPET
- SSDT-PLUG
- SSDT-PNLFCFL : backlight fix
- SSDT-SBUS-MCHC
- SSDT-dGPU-Off


## 사양

- NT950XCR-G58A
- Intel Core i5-10210u
- Intel UHD Graphics 620
- NVIDIA Geforce MX250 (비활성화)
- 1 x Samsung 8GB DDR4 ????MHz (온보드)
- 1 x Samsung pm981a NVMe M.2 SSD 256 GB (윈도우용)
- 1 x Toshiba BG3 NVMe M.2 SSD 128 GB (맥 설치용)
- iptime n100 mini (USB로 추가 장착)


## 작동하는 것

- 키보드 / 트랙패드
- 블루투스
- USB A 포트
- 배터리 상태 확인
- 화면 밝기 조절
- 화면 커버 인식
- 전면 카메라
- 밝기 조절/볼륨 핫키
- SD/UFS 슬롯(UFS 작동확인 안 함)


## 안 되는 것

- 잠자기
- 소리
- WiFi
- 지문인식
- 트랙패드 무선충전
- HDMI 출력(삽입 시 프리징)


## 확인되지 않은 것

- USB PD
- 썬더볼트3 단자
- 조도 센서


## BIOS 설정

- TPM Device: Off
- Secure Boot Control: Off
- Fast BIOS Mode: Off
- USB LAN PXE OPROM: Off
