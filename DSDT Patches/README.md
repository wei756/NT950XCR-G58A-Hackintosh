# DSDT 에러 픽스

DSDT 추출하면 5개의 에러가 보일 겁니다.

![Error screenshot](../screenshots/1-errors.png)



#### PARSEOP_EXP_MULTIPLY

이 오류는 \* 기호가 엉뚱한 데 들어가 있어서 생기는 오류입니다.

다음 두 줄을 제거하면 오류가 사라집니다.

![2-exp-error](../screenshots/2-exp-error.png)



#### PARSEOP_ZERO

이 오류는 Zero 가 엉뚱한 데 들어가 있어서 생기는 오류입니다.

Zero 만 있는 줄을 모두 제거하면 오류가 사라집니다.

![3-zero-error1](../screenshots/3-zero-error1.png)

![4-zero-error2](../screenshots/4-zero-error2.png)





#### Illegal open scope on external object from within DSDT

앞선 두 가지 오류를 해결하고 Complie 버튼을 눌러 보면 수많은 에러와 경고들이 여러분을 반길 겁니다.

경고는 모두 무시해도 상관 없지만 3개의 에러는 해결해야 합니다.

에러가 난 곳을 확인해 봅시다.

![5-stupid complier](../screenshots/5-stupid-complier.png)

오류가 난 곳을 감싸고 있는 IF문의 의미는 \_SB.PCI0.RP11.PXSX가 존재한다면 다음 코드를 실행해라. 라는 뜻입니다.

하지만 저 멍청한 컴파일러는 PXSX? 그런 거 없는뒈여? 에러나 처드세연~ ㅇㅈㄹ하고 있는 겁니다.



이 에러를 해결하기 위해서는 그냥 해당하는 코드를 제거하면 됩니다.

실제로 PXSX가 DSDT 내에 존재하지 않기 때문에 어차피 이 코드들은 실행되지 않습니다.

따라서 이 블록들을 모두 삭제해도 좋습니다.

![6-remove code](../screenshots/6-remove-code.png)
