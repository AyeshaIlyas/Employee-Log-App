//
//  PreferencesView.swift
//  EmployeeLog
//
//  Created by Ayesha Ilyas on 3/14/22.
//

import SwiftUI

struct PreferencesView: View {
    @EnvironmentObject var model:EmployeeModel
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
//                    // MARK: Title
//                    Text("Display Preferences")
//                        .font(.system(size: 35, weight: .bold, design: .default))
//                        .foregroundColor(.black)
                    
                    // MARK: Preferences
                    Toggle("Show name:", isOn: $model.showName)
                    Toggle("Show address:", isOn: $model.showAddress)
                    Toggle("Show company:", isOn: $model.showCompany)
                    Toggle("Show years of experience:", isOn: $model.showExperience)
                }.padding()
            }.navigationTitle("Display Preferences")
        }
    }
}

struct PreferencesView_Previews: PreviewProvider {
    static var previews: some View {
        PreferencesView()
    }
}
