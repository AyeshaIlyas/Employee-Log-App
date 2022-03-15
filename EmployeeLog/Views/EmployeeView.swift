//
//  EmployeeView.swift
//  EmployeeLog
//
//  Created by Ayesha Ilyas on 3/14/22.
//

import SwiftUI

struct EmployeeView: View {
    @EnvironmentObject var model: EmployeeModel
    var body: some View {
        
        NavigationView {
            ScrollView {
                // MARK: Employee Information
                VStack (alignment: .leading) {
                    ForEach (model.employees) { employee in
                        if model.showName {
                            Text("Name: \(employee.name)")
                        }
                        
                        if model.showAddress {
                            Text("Address: \(employee.address)")
                        }
                        
                        if model.showCompany {
                            Text("Company: \(employee.company)")
                        }
                        
                        if model.showExperience{
                            Text("Years of experience: \(employee.experience)")
                        }
                        
                        // if at least one field is shown divide each entry with a Divider
                        if model.showName || model.showAddress || model.showCompany || model.showExperience {
                            Divider()
                        }
                       
                    }
                }.padding()
            }.navigationTitle("People")
        }
    }
}

struct EmployeeView_Previews: PreviewProvider {
    static var previews: some View {
        EmployeeView()
    }
}
