# NT950XCR-G58A-Hackintosh
 Samsung Galaxy Book Ion OpenCore EFI Firmware


참고한 글:

- https://dortania.github.io/OpenCore-Desktop-Guide/
- https://www.tonymacx86.com/threads/guide-how-to-patch-dsdt-for-working-battery-status.116102/
- https://www.insanelymac.com/forum/topic/305030-guide-how-to-fix-brightness-hotkeys-in-dsdt/

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


## 안 되는 것

- 잠자기
- 소리
- WiFi
- 지문인식
- 트랙패드 무선충전


## 확인되지 않은 것

- SD/UFS 슬롯
- HDMI 출력
- USB PD
- 썬더볼트3 단자
- 조도 센서


## BIOS 설정

- TPM Device: Off
- Secure Boot Control: Off
- Fast BIOS Mode: Off
- USB LAN PXE OPROM: Off
