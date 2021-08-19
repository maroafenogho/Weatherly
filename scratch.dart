void main() {
  performTasks();
}

Duration threeSeconds = Duration(seconds: 3);
void performTasks() {
  task1();
  task2();
  task3();
}

void task1() {
  String result = 'task 1 done';
  print(result);
}

Future task2() async {
  await Future.delayed(threeSeconds, () {
    String result = 'task 2 done';
    print(result);
  });
}

void task3() {
  String result = 'task 3 done';
  print(result);
}
