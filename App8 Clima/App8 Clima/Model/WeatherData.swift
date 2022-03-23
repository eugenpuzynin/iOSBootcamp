//
//  WeatherData.swift
//  App8 Clima
//
//  Created by Eugen Puzynin on 23.03.22.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let id: Int
}
