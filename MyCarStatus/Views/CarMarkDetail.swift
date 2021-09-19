//
//  CarMarkDetail.swift
//  MyCarStatus
//
//  Created by Vasiliy Sergeev on 19.09.2021.
//

import SwiftUI

struct CarMarkDetail: View {
    var Carmark: CarMarkData
    
    var body: some View {
        VStack {
            CircleImage(image: Carmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(Carmark.mark)
                    .font(.title)
                    .foregroundColor(.primary)
                
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
        CarMarkDetail(Carmark: carmarkdatas[0])
    }
}
