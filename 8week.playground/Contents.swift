//nil = noting 이 변수에는 값이 들어갈 수도 있고, 아닐 수도 있다.
// nil을 표현하기위해 ? 를 사용하기도 한다. 
var year: Int? = 2001;

var x = Int("52");
print(x);
print(x!); //unwrap
x! * 5
// x * 5

if x != nil{
    x! * 5
}

if let y = Int("15") {
    print(y);
}
