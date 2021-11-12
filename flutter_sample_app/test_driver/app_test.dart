import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  // テストケースをグループ化しているが、今回の様に1ケースだとあまり意味がない
  group('Counter App', () {
    // keyでWidgetを取得する
    final counterTextFinder = find.byValueKey('counter');
    final buttonFinder = find.byValueKey('increment');
    FlutterDriver driver;

    // 全てのテストの前にDriverに接続する
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    }); // setUpAll()
    // 全てのテストの後にDriverを解放する
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      } // if
    }); // tearDownAll()
    // テスト1:開始時にTextが0であることを確認する
    test('starts at 0', () async {
      expect(await driver.getText(counterTextFinder), "0");
    }); // test
    // テスト2:incrementをタップすると、TExtが1になることを確認する
    test('increments the counter', () async {
      // タップ操作
      await driver.tap(buttonFinder);
      // Textの検証
      expect(await driver.getText(counterTextFinder), "1");
    }); // test
  }); //group
}