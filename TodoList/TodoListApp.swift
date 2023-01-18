//
//  TodoListApp.swift
//  TodoList
//
//  Created by Денис Александров on 26.12.2022.
//

import SwiftUI

/*
 MVVM
 
 Model - data point
 View - UI
 ViewModel - manages Models for View
 
 */

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}















