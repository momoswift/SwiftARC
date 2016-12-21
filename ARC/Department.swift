//
//  Department.swift
//  ARC
//
//  Created by YenHenChia on 2016/12/20.
//  Copyright © 2016年 YenHenChia. All rights reserved.
//

import Cocoa

public class Department {

    let unit:String;
    
    public init(unit:String) {
        
        self.unit = unit;
        
        print("\(self.unit) is being initialized!");
    }
    
    public var employee:Person?;
    
    deinit {
        
        print("\(self.unit) is being deinitialized!");
    }
}
