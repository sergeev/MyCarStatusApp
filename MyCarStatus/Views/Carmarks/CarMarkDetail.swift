//
//  CarMarkDetail.swift
//  MyCarStatus
//
//  Created by Vasiliy Sergeev on 19.09.2021.
//

import SwiftUI

struct CarMarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var Carmark: CarMarkData
    
    var carmarkIndex: Int {
        modelData.carmarkdatas.firstIndex(where: { $0.id == Carmark.id })!
        
    }
    
    var body: some View {
        VStack {
            CircleImage(image: Carmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(Carmark.mark)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.primary)
                    FavoriteButton(isSet: $modelData.carmarkdatas[carmarkIndex].isFavorite)
                }
                
                HStack {
                    Text(Carmark.model)
                    Spacer()
                    Text(Carmark.description)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
            }
            .padding()
            
            Spacer()
        }
    }
}

struct CarMarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        CarMarkDetail(Carmark: ModelData().carmarkdatas[0])
    }
}
