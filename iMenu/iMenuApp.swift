//
//  iMenuApp.swift
//  iMenu
//
//  Created by Khidr Brinkley on 5/25/21.
//

import SwiftUI

@main
struct iMenuApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
