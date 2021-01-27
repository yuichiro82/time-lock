![Timer1](https://user-images.githubusercontent.com/70064197/105819729-e5b1d900-5ffb-11eb-8099-1d111b88ea65.png)


<h2 align="center">Time lock</h2>

## App URL

### **Web URL: https://time-lock.herokuapp.com/**  

- ユーザid:admin29
- パスワード:2922

# 概要
- このアプリはポモドーロタイマーアプリです。このアプリでできる機能は3つあります。 タイマー機能、チャート機能、カレンダー機能です。

- ポモドーロタイマーとは
学習などのタスクを25分間続けた後に5分の休憩を取り、そのサイクルを最大4回続けるという時間管理術です。

## DEMO 

![Timer3](https://user-images.githubusercontent.com/70064197/105831631-4d6f2080-600a-11eb-9f02-ee419f8dbbd2.jpg
)
### timer機能
タイマー機能は、javascriptで実装し、25分からカウントダウンするカウントダウンタイマーです。
ユーザーが学習を終了後に、フォームから学習した時間とタスクを入れて送信（保存）する入力形式でテーブルに保存しています。

![Timer4](https://user-images.githubusercontent.com/70064197/105822901-e3ea1480-5fff-11eb-9d18-37a370085ec9.jpg)
### chart機能
チャートの表示には、railsのgem、chartkickを用いました。
ユーザー管理画面、chartページから、ユーザーが記録した学習時間をグラフ化し、推移をみる事ができます。縦軸に実行時間、横軸に日時を取り、日別、週別、月別、タスク別を確認する事ができます。
この機能により、「モチベーション維持」「進捗管理」がしやすくなります。


![Timer5](https://user-images.githubusercontent.com/70064197/105831109-aab6a200-6009-11eb-8a46-3ac5e2c249ab.png)



## Requirement
- rails
- ruby

## Author
- Github
- twitter:[yvichrou211](https://twitter.com/yvichrou211)

## License
[MIT](https://yuichiro82.mit-license.org/)

