import 'package:flutter_test/flutter_test.dart';
import 'package:sm2/SmResponse.dart';
import 'package:sm2/sm2.dart';

void main() {
  test('Calc success', () {
    final sm = Sm();

    SmResponse smResponse = sm.calc(
      quality: 0,
      repetitions: 0,
      previousInterval: 2.5,
      previousEaseFactor: 0
    );

    expect(smResponse.interval, 1);
    expect(smResponse.repetitions, 0);
    expect(smResponse.easeFactor, 1.3);
  });

  test('Calc - quality: 5, repetitions: 2, interval: 6, factor: 1.3', () {
    final sm = Sm();

    SmResponse smResponse = sm.calc(
      quality: 5,
      repetitions: 2,
      previousInterval: 6,
      previousEaseFactor: 1.3
    );

    expect(smResponse.interval, 8);
    expect(smResponse.repetitions, 3);
    expect(smResponse.easeFactor, 1.4000000000000001);
  });
}
