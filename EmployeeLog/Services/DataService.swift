//
//  DataService.swift
//  EmployeeLog
//
//  Created by Ayesha Ilyas on 3/14/22.
//

import Foundation

class DataService {
    
    static func getData() -> [Employee] {
        
        // get path
        let stringPath = Bundle.main.path(forResource: "employeeData", ofType: "json")
        
        if let path = stringPath {
    
            do {
                // get url and data
                let data = try Data(contentsOf: URL(fileURLWithPath: path))
                // decode JSON into employee objects
                let employees = try JSONDecoder().decode([Employee].self, from: data)
                
                // assign UUID to each employee
                for e in employees {
                    e.id = UUID()
                }
                
                return employees
                
            } catch {
                print("Error reading data or parsing JSON. Figure it out: \(error)")
            }
            
        } else {
            print("Path not found")
        }
        
        return [Employee]()
    }
}
