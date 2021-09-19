//
//  CarImage.swift
//  MyCarStatus
//
//  Created by Vasiliy Sergeev on 17.09.2021.
//

import SwiftUI

struct CarImage: View {
    var body: some View {
        Image("aurisGen1")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CarImage_Previews: PreviewProvider {
    static var previews: some View {
        CarImage()
    }
}
