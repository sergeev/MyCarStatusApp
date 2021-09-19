//
//  CarList.swift
//  MyCarStatus
//
//  Created by Vasiliy Sergeev on 18.09.2021.
//

import SwiftUI

struct CarList: View {
    // Отображать только фаворитны = true, если false = всех
    @State private var showFavoritesOnly = true
    
    // Добавляем фильтр для отображения фаворитных предметов
    var filteredCarMarkDatas: [CarMarkData] {
        carmarkdatas.filter { carmarkdata in
            (!showFavoritesOnly || carmarkdata.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List(filteredCarMarkDatas) { CarMarkData in
                NavigationLink(
                    destination: CarMarkDetail(Carmark: CarMarkData)) {
                    CarRow(Carmark: CarMarkData)
                }
            }
            .navigationTitle("Модели")
        }
    }
    
}

struct CarList_Previews: PreviewProvider {
    static var previews: some View {
        // Создаем устройства для отображения
        ForEach(["iPhone SE (2nd generation", "iPhone XS Max"], id: \.self) { deviceName in
            CarList()
            .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
