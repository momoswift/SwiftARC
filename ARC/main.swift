//
//  main.swift
//  ARC
//
//  Created by YenHenChia on 2016/12/6.
//  Copyright © 2016年 YenHenChia. All rights reserved.
//

import Foundation

//! ARC in Action
/*
var reference1:Person?;
var reference2:Person?;

reference1 = Person(name: "john");
//print(CFGetRetainCount(reference1));

reference2 = reference1;

reference1 = nil;
reference2 = nil;
*/

//! ARC in Class
/*
var wang:Person?
var app:Department?

wang = Person(name: "dog!");
app = Department(unit: "app");

wang?.department = app;
app?.employee = wang;

wang = nil;
app = nil;
*/
/*
var wang:Person?
var app:Department_weak?

//wang = Person(name: "dog!");
wang = Person(name:"sdog!");
app = Department_weak(unit: "app");

wang?.department_weak = app;
app?.employee = wang;

wang = nil;
app = nil;
*/

/*
var wang:Person?
var app:Department_unowned?

//wang = Person(name: "dog!");
wang = Person(name:"sdog!");
app = Department_unowned(unit: "app", employee:wang!);

wang?.department_owned = app;

wang = nil;
print("employee \(app?.employee)"); //! crash
app = nil;
 */
//print("employee \(app?.employee)");
//print("employee2 \(app?.employee2)"); //! crash


//! ARC in Cloures
/*
var heading:HtmlElement? = HtmlElement(name: "h1");
let defaultText = "some default text!";

heading?.asHtml = { ()->String in
    
    return "<\(heading?.name)>\(heading?.text ?? defaultText)</\(heading?.name)>"
}

print(heading?.asHtml() as Any); //! use above closure
heading = nil;
*/
var paragraph:HtmlElement? = HtmlElement(name: "p", text: "hello, world");
print(paragraph?.asHtml() as Any); //! use class's closure
paragraph = nil;
