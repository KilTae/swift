func consoleLog(){
    print("Hi guys");
}

consoleLog();

func dayOfWeek(day : String, month: Int){
    print("Today is \(day). We are in \(month).");
}

dayOfWeek(day: "Monday",month: 6);
dayOfWeek(day: "Sunday",month: 10);

func multiply(x: Int, y: Int) -> Int{
    return x * y;
}
multiply(x: 5, y: 3);

var result: Int = multiply(x: 7, y: 10);
result / 4;

multiply(x: 5, y: multiply(x: 3, y: 2));

func add(x: Double, y:Double, z: Double) -> Int {
    
    return Int(x+y+z);
}
add(x: 6.2, y: 3.5, z: 16.3);
