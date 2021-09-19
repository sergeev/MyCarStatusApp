//
//  ContentView.swift
//  MyCarStatus
//
//  Created by Vasiliy Sergeev on 17.09.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CarList()
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
