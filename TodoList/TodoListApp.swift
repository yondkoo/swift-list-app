//
//  TodoListApp.swift
//  TodoList
//
//  Created by Yondonrinchin Batsukh on 2021.10.01.
//

import SwiftUI

/*
    MVVM Architecture
 
    Model - data point
    View - UI
    ViewModel - managas Models for View
 
*/

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
