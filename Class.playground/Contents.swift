//How to create Class in Swift

class Vehicle {
    var brand = ""
    var modelYear = 0
    
    func drive() {
        print("adfa");
    }
    
}

class Truck : Vehicle {
    override func drive() {
        print("pit pit")
    }
    
    
}

class Car : Vehicle {

    var color = ""
    
 /*   func drive() {
        print("vroom vroom");
    }
    
    func intro() {
        print("This \(color) \(brand) is \(modelYear) model");
    }
    
    func add() {
        modelYear = modelYear + 10;
    }
 */
    
    override func drive() {
        print("vroom vroom");
        //super.drive() 부모 drive가 나옴
    }
}

var myCar = Car();
myCar.modelYear = 2010;
myCar.brand = "ford";
myCar.color = "blue";
/*myCar.add();
myCar.drive();
myCar.intro();
*/
var sportsCar = Car();

sportsCar.modelYear = 2020;
sportsCar.brand = "ferrari";
sportsCar.color = "black";
//sportsCar.drive();
//sportsCar.intro();



var myTruck = Truck();
myTruck.modelYear = 23120;
myTruck.drive();

class Pen {
    var brand = "faber castel"
    var length = 7.10
    var color = ""
}

var redPen = Pen();


