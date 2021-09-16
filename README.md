# Flutter
# Flutterの特徴
* 専用SDKによる開発・・・SDKによって専門のAPIを提供しており、そのAPIを使用し開発を行う。AndroidではMaterial(マテリアル)、iOSではCupertino(クパティーノ)がある。
# Flutterの開発に必要なもの
* Flutter SDK・・・Flutterの本体部分。必須。
* Dart・・・Flutterで使う開発言語。Flutter SDKに含まれている。
* Xcode・・・MacOS上で、iOS向けアプリの開発を考えている場合に必要。
* JDK(Java Development kit)・・・Javaでソフトウェア開発を行うのに必要なソフトウェアをまとめたパッケージ。AndroidのSDKを利用する上で必要。
# Flutter始め
* VSCodeでcommand+Pでflutter:New Application Project
# Flutterフォルダ構成
* android・・・android個別
* ios・・・iOS個別
* lib・・・共通のソースコード
* test・・・テストコード
* web・・・Web個別
* pubspec.yaml・・・パッケージ管理
# Dartの基本
1. 演算
- +,-,*,/,% (四則演算)
- ++,-- (インクリメント,デクリメント)
- >> (シフト)
- &,^,! (ビット演算)
- &&,||,! (AND,OR,NOT)
- ?? (null判定)
- += (複合代入)
- as (型キャスト)
- is (型チェック)
2. 制御構文
- if,else (条件分岐)
- switch,case (多分岐)
- for,while,forEach, for in, dowhile (ループ)
- break,continue (制御)
3. 変数の型
- int (整数)
- double (実数)
- num (数値)
- String (文字列(Runesも可))
- bool (ブール値)
- [] (配列)
- List (リスト)
- Set (集合)
- Map (Key/Value)
- Symbol (識別子)
- late (遅延初期化)
4. 文字列
```Dart:文字列
print("文字列の表示") // 文字列の表示
print("$_counter") // 変数の表示
print("${_counter + 1}") // 式の展開
```
5. 変数修飾子
- final (再代入不可)
- const (定数)
- var (型推論)
* 例外処理
- try (例外が起きる可能性)
- catch (例外が起きたときの処理)
- finally (例外に関わらず実施する処理)
- throw (例外を投げる)
6. クラス
```Dart:class
// クラスの定義
class MyData {
  String name;
  // コンストラクタ
  // MyData(String name){ this.name = name;}と等価
  MyData(this.name);
}
```
- new (インスタンスの生成)
    - 省略可
- extends (継承)
    - 1つだけ
- abstruct (抽象クラス)
    - newできない
- implements (インタフェース)
    - interfaceはキーワードは無いが、classでインタフェースを作る
    - 複数可
- with (mixin) 
7. フィールド/メソッド
- _xxx
    - _ではじめるとプライベート変数/メソッド扱い
- static (static化)
    - クラスに属するフィールド/メソッド
- noSuchMethod() (メソッドがない時に呼ばれるメソッド)
    - メタプログラミング
- アノテーション (メタ情報を付加)
    - @override (オーバーライド)
    - @deprecated (非推奨)
- get/set (getter,setter)
    - 以下のようにgetter/setterを設定するのが一般的
```Dart:get/set
//hogeクラス
int get data => _data; //getter
set data(int data){this._data = data}; //setter

//使う側
hoge.data = data;
print(hoge.data);
```
- class(String name) : super(name) (イニシャライザリスト)
    - :で区切った初期化処理を実施
- factory (factoryコンストラクタの定義)
8. インポート
- import
    - パッケージをインポート
- import as xxx
    - xxxで名前をつける
- import show yyy
    - yyy のみを使う
- import hide zzz
    - zzz は除外する
9. メソッド
- method1(param: 1, param2: "data")
    - 名前付きパラメタ
- method2(String key, [String opt])
    - オプションパラメタ
    - 引数がなくても呼び出せる
- method3(ip = '127.0.0.1', port = 8080)
    - デフォルトパラメタ
    - 引数がない時に値を入れる
- methods4(func)
    - funcはメソッド。関数を変数に入れて渡せる
    - 関数の引数を第一級クラスオブジェクトとして扱える
- method5(data) => {print(data)}
    - 匿名関数
    - 簡素な関数の定義の命名することなく定義できる
10. その他
- enum (列挙型)
- Sum<Int> (ジェネリクス)
- async,await (非同期)
- Future (非同期の戻り値)
- assert (アサーション)
11. カスケード記法
- .. (カスケード記法)
    - オブジェクトのメソッドを連続で呼び出せる
```Dart:カスケード記法
// カスケード記法なし
var list1 = new List();
    list1.add(1);
    list1.add(2);

// カスケード記法あり
var list2 = new List()..add(1)..add(2)
```