//
//  MyCarStatusApp.swift
//  MyCarStatus
//
//  Created by Vasiliy Sergeev on 17.09.2021.
//

import SwiftUI

@main
struct MyCarStatusApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                ContentView().environmentObject(modelData)
        }
    }
}
