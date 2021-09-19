//
//  CarRow.swift
//  MyCarStatus
//
//  Created by Vasiliy Sergeev on 18.09.2021.
//

import SwiftUI

struct CarRow: View {
    var Carmark: CarMarkData
    
    var body: some View {
        HStack {
            Carmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(Carmark.model)
            
            Spacer()
            
            if Carmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct CarRow_Previews: PreviewProvider {
    static var carmarkdatas = ModelData().carmarkdatas
    static var previews: some View {
        Group {
            CarRow(Carmark: carmarkdatas[0])
            CarRow(Carmark: carmarkdatas[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
