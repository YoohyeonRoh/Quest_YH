import 'dart:async';

void main() {
  final pomodoroTimer = PomodoroTimer();
  pomodoroTimer.start();
}

class PomodoroTimer {
  int round = 0;

  Future<void> start() async {
    while (round < 4) {
      round++;
      if (round < 4) {
        print('$round라운드 작업(work) 25분 시작합니다.');
        await startCountdown(Duration(minutes: 25));
        print('$round라운드 휴식(rest) 15분 시작합니다.');
        await startCountdown(Duration(minutes: 15));
      } else {
        print('$round라운드 작업(work) 25분 시작합니다.');
        await startCountdown(Duration(minutes: 25));
        print('$round라운드 휴식(rest) 15분 시작합니다.');
        await startCountdown(Duration(minutes: 15));
      }
    }
    print('Pomodoro 타이머가 종료되었습니다!');
  }

  Future<void> startCountdown(Duration duration) async {
    int remainingSeconds = duration.inSeconds;

    Timer.periodic(Duration(seconds: 1), (timer) {
      if (remainingSeconds <= 0) {
        timer.cancel();
      } else {
        String minutes = (remainingSeconds ~/ 60).toString().padLeft(2, '0');
        String seconds = (remainingSeconds % 60).toString().padLeft(2, '0');
        print('남은 시간: $minutes:$seconds');
        remainingSeconds--;
      }
    });

    await Future.delayed(duration);
  }
}
