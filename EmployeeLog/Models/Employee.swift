//
//  Employee.swift
//  EmployeeLog
//
//  Created by Ayesha Ilyas on 3/14/22.
//

import Foundation

class Employee: Identifiable, Decodable {
    var id:UUID?
    var name:String
    var address:String
    var company:String
    var experience:Int
}
