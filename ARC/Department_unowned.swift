//
//  Department_unowned.swift
//  ARC
//
//  Created by YenHenChia on 2016/12/20.
//  Copyright © 2016年 YenHenChia. All rights reserved.
//

import Cocoa

public class Department_unowned {

    let unit:String;
    
    public init(unit:String, employee:Person) {
        
        self.unit = unit;
        
        self.employee = employee;
        
        print("\(self.unit) is being initialized!");
    }
    
    public unowned var employee:Person;
    
    deinit {
        
        print("\(self.unit) is being deinitialized!");
    }
}
