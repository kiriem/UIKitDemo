/*

var 変数
let 定数

型
文字  String
整数値 Int
小数値
    Double
    Float
真偽値 Bool    true false 真か偽か


*/

//１行コメント
/*

複数行コメント

*/

//問題１   自分の名前をname変数に格納してみよう

//var (変数名）:型 = 値

//var name:String = "宮島衣瑛";
//name = "Kirie Miyajima";

let name:String = "みやじまきりえ";
println(name);




////足し算
//println(x + y);
//
////引き算
//println(x - y);
//println(y - x);
//
////掛け算
//println(x * y);
//
////割り算
//println(x / y);

//問題:割り算をすると正しい答えが出ないのはなぜか？
//答え：定義していた型がIntであったから。正しくはDoubleやFloatを使うべし！


//文字列の連結
var hello:String = "こんにちは！";
var userName:String = "きりえ";

println(hello + userName)

println("こんにちは！\(userName)さん");

/* 比較演算子 */
// < > <= >= == !=
//var x:Int = 100;
//var y:Int = 100;
//
//x < y
//x > y
//
//x <= y
//x >= y
//
//x == y
//x != y

/* 論理演算子 */

// AND OR NOT

/*
    AND     &&
    OR      ||
    NOT     !
*/

let t:Bool = true;
let f:Bool = false;

t && f
t || f


/* 条件分岐 */

// if もし（条件）なら

let a:Int = 1;
let b:Int = 5;

a < b

if a < b {
    println("a<b");
}else if a == b {
    println("a==b");
}else{
    println("a>b");
}

/*
    もしa<bなら、do
    でなければ do'

    もし なら
    でなければ もし なら

*/

//switch

var c:Int = 3;
/*
switch 変数名 {
case 0:
    //実行
case 1:
    //実行
case 2:
    //実行
default:
    //実行
break;
*/

switch c {
case 0:
    println("Cは0");
case 1:
    println("Cは1");
case 2:
    println("Cは2");
default:
    println("それ以外！");
    break;
}

/* ループ処理 */

var i:Int = 0;

while i < 10 {
    println(i);
    i++
    //i = i + 1
}

for (var j=0; j<20; j++){
    println(j);
}


/* 関数 */

func thanks(name:String){
    println("ありがとう！\(name)さん！");
}

/* クラス */

class iphoneMake {
    
    //ネーム変数
    var osVersion:Double?;
    var color:String;
    var dataCapacity:Int;
    var caria:String;
    
    //メソッド
    func made()->String{
        if osVersion == nil {
            return "Error";
        }else{
            return "Your iPhone:iOS\(osVersion), 色:\(color), 容量:\(dataCapacity)GB, キャリア：\(caria)";
        }
    }
    
    init(){
        osVersion = 8.1;
        color = "Gold";
        dataCapacity = 64;
        caria = "Softbank";
    }
}

//インスタンス化
let make:iphoneMake = iphoneMake();
make.caria = "au";
make.color = "SpaceGray";
make.dataCapacity = 128;
make.osVersion = 8.1;

println(make.made());
