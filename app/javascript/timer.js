'use strict'

{
  document.addEventListener("DOMContentLoaded", function(){

    var timer = document.getElementById("timer");
    var start = document.getElementById("start");
    var min = document.getElementById("min");
    var sec = document.getElementById("sec");
    var reset = document.getElementById("reset");
    var pomodoro = document.getElementById("pomodoro");

    var startTime; //宣言
    var timeLeft;
    var timeToCountDown = 25 * 60 * 1000; 
    var timerId;
    var num = 0;
    var isRunning = false;

    function updateTimer(t){
      var d = new Date(t);
      var m = d.getMinutes();
      var s = d.getSeconds();
      m = ('0' + m).slice(-2);
      s = ('0' + s).slice(-2);
      timer.textContent= m + ":" + s ;
    }

    function countDown(){
      timerId = setTimeout(function() {
        timeLeft = timeToCountDown - (Date.now() -startTime);
        if (timeLeft < 0) {
          isRunning = false;
          start.textContent = 'Start';
          clearTimeout(timerId);
          timeLeft = 0;
          timeToCountDown = 0;
          num += 1;
          pomodoro.textContent = "repeat:" + num;
          updateTimer(timerId);
          return //次のcountDownを呼びたくない
        };
        updateTimer(timeLeft);
        countDown(); //再起的に実行処理
      }, 1000); //10ms後
    }

    start.addEventListener('click', () => {
      if (isRunning === false) {
        isRunning = true;
        start.textContent = 'Stop';
        startTime = Date.now();
        countDown();
      } else {
        isRunning = false;
        start.textContent = 'Start';
        timeToCountDown  = timeLeft;  //timeLeftで更新
        clearTimeout(timerId);
      } 
    });
  
    min.addEventListener('click', () => {
      if (isRunning === true) {
        return;
      }
      timeToCountDown += 60 * 1000; //1min 60 *1000
      if (timeToCountDown >= 60 * 60 * 1000 ) {
        timeToCountDown = 0;
      }
      updateTimer(timeToCountDown); //反映
    });
  


    sec.addEventListener('click', () => {
      if (isRunning === true) {
        return;
      }
      timeToCountDown += 1000; //1sec  
      if (timeToCountDown >= 60 * 60 * 1000 ) {
        timeToCountDown = 0;
      }
      updateTimer(timeToCountDown)
    });
    
    reset.addEventListener('click', () => {
      timeToCountDown = 25 * 60 * 1000; ; //
      updateTimer(timeToCountDown)
    });
  }, false);

}
  