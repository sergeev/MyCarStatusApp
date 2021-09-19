//
//  ModelData.swift
//  MyCarStatus
//
//  Created by Vasiliy Sergeev on 18.09.2021.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var carmarkdatas: [CarMarkData] = load("CarMarkData.json")
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension:  nil)
    else {
        fatalError("Невозможно найти \(filename) в главном bundle.")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Невозможно загрузить \(filename) в главном bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Невозможно разобрать \(filename) в \(T.self):\n\(error)")
    }
}
