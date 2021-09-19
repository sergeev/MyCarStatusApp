//
//  CarList.swift
//  MyCarStatus
//
//  Created by Vasiliy Sergeev on 18.09.2021.
//

import SwiftUI

struct CarList: View {
    var body: some View {
        List(carmarkdatas, id: \.id) {CarMarkData in CarRow(Carmark: CarMarkData)
            
        }
    }
}

struct CarList_Previews: PreviewProvider {
    static var previews: some View {
        CarList()
    }
}
