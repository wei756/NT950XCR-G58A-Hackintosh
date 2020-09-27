# How to fix DSDT error

If you've extracted DSDT, you will get 5 errors.

![Error screenshot](../screenshots/1-errors.png)

#### PARSEOP_EXP_MULTIPLY

This error is caused by '*' mark in wrong place.

So, remove this lines, then the error will be disappeared.

![2-exp-error](../screenshots/2-exp-error.png)



#### PARSEOP_ZERO

This error is caused by 'Zero' in wrong place.

Click error line to go to the line, then remove all 'Zero' lines.

![3-zero-error1](../screenshots/3-zero-error1.png)

![4-zero-error2](../screenshots/4-zero-error2.png)





#### Illegal open scope on external object from within DSDT

If you click compile button after fixing 5 errors, you will get many warnings and new errors.

Look at this error.

![5-stupid complier](../screenshots/5-stupid-complier.png)

That If statement means that if '_SB.PCI0.RP11.PXSX' exists, execute scope below.

In other words, if PXSX not exist, it never run these codes.



But the complier says, where is PXSX? ur trying to access wrong device!!! get the fxxking ERROR.



Anyway, you have to follow below steps to fix errors.

##### Remove all error blocks

These codes is never executed because PXSX doesn't exist, so you can delete all error lines.

![6-remove code](../screenshots/6-remove-code.png)
