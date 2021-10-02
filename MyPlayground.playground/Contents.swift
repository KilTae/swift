var a=2000; //var 는 변수를 바꿀 수 있음. 하지만 let은 변수를 바꾸지 못한다. 그런데 null값으로 두고 바꾸는 건 가능.
a=1000;
a=20202;
a;
let meterToFeet=20.3;
let year=1999;
var x: String="Korea"; // : String int 변수 선언을 할 수 있음.


var account = 100;
account=account-10;
print(45);


//if

var age=19;
if age > 17 {
    print("You are able to get driver license");
}else{
    print ("You are too young to get license");
}

var sound=70;
if sound >= 85{
    print("too loud");
}else{
    print("safe");
}



//Math operations
(4+6) / 3 * 99

var agee = 12;
var ageMin = 19;
if agee < ageMin{
    let di=ageMin-agee;
    print(di);
}
// converter

var i = 15;
var m = i * (381/1250); //double 이랑 int 사용함 그래서 결과가 0이 나온다.

2.0/5.0


// transfer

var transfer = 200.0;
var cut = transfer * 0.02;

//floats 쓰는걸 추천 ㄴㄴ

var order = 227.0;
var cutrate = 0.02;
var cutt = Double(order) * Double(cutrate);


var x1 = "3";
Double(x1)! * 7;


var income = 300;
var day = "monday";

print("hihi \(day) i earned \(income)")
//booleans
var isEurope: Bool = true
if isEurope  {
    print("welcome to europe")
}
