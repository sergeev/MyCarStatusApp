//
//  CarMark.swift
//  MyCarStatus
//
//  Created by Vasiliy Sergeev on 18.09.2021.
//

import Foundation
import SwiftUI

struct CarMarkData: Hashable, Codable, Identifiable {
    var id: Int
    var mark: String
    var model: String
    var gen: String
    var yers: String
    var fuel: String
    var engine: String
    var power: String
    var drive: String
    var body: String
    var steeringWheel: String
    var equipment: String
    var description: String
    
    var isFavorite: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
