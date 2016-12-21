//
//  HtmlElement.swift
//  ARC
//
//  Created by YenHenChia on 2016/12/8.
//  Copyright © 2016年 YenHenChia. All rights reserved.
//

import Foundation

public class HtmlElement {
    
    let name:String;
    let text:String?;
    
    public init(name:String, text:String? = nil) {
     
        self.name = name;
        self.text = text;
    }
    
    public lazy var asHtml:()->String = {
        
        [unowned self] ()->String in
        
        if let text = self.text {
            
            return "<\(self.name)>\(text)</\(self.name)>";
        }
        else {
            
            return "<\(self.name)/>";
        }
    }
    
    public lazy var asHtml2:()->String = {
        
        [weak self] ()->String in
        
        if let text = self?.text {
            
            return "<\(self?.name)>\(text)</\(self?.name)>";
        }
        else {
            
            return "<\(self?.name)/>";
        }

    }
    deinit {
        
        print("\(self.name) is being deinit!");
    }
}
