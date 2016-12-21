import Foundation

public class Person {
    
    let name:String;
    
    public init(name:String) {
        
        self.name = name;
        
        print("\(name) is being initialized!");
    }
    
    public var department:Department?;
    public var department_owned:Department_unowned?;
    public var department_weak:Department_weak?;
    
    deinit {
        
        print("\(name) is being deinitialized!");
    }
}
