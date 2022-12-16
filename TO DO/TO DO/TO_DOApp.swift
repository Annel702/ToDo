//
//  TO_DOApp.swift
//  TO DO
//
//  Created by Annel Gonzales on 11/20/22.
//

import SwiftUI





@main
struct TO_DOApp: App {
    var body: some Scene{
        WindowGroup {
            ToDoList()
        }
    }
}
let toDoStorage = ToDoStorage ()
let contentView = ToDoList()
    .environmentObject(toDoStorage)

if let scene = scene as?
    UIWindowScene {
    let window = UIWindow(windowScene: windowScene)
    
    window.rootViewController = UIHostingController(rootView: contentView)
    
    self.window = window
    window.makeKeyAndVisible()
}


