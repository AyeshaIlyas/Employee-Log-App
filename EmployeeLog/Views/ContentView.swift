//
//  ContentView.swift
//  EmployeeLog
//
//  Created by Ayesha Ilyas on 3/14/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            EmployeeView()
                .tabItem {
                    Image(systemName: "person.2")
                }
            
            PreferencesView()
                .tabItem {
                    Image(systemName: "gearshape")
                }
        }.environmentObject(EmployeeModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
