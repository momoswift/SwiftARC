import Foundation

public class Department_weak {
    
    let unit:String;
    
    public init(unit:String) {
        
        self.unit = unit;
        
        print("\(self.unit) is being initialized!");
    }
    
    public weak var employee:Person?;
    
    deinit {
        
        print("\(self.unit) is being deinitialized!");
    }
}
