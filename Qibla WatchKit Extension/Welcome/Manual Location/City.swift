//
//  City.swift
//  Qibla WatchKit Extension
//
//  Created by Saeed Taheri on 9/14/20.
//

import Foundation

struct City: Codable {
	let name: String
	let lat, lng: Double

	enum Error: Swift.Error {
		case loadError
	}
}

typealias Country = String
typealias Cities = [Country: [City]]

extension City {
	static func loadAllCities(completion: @escaping (Result<Cities, City.Error>) -> Void) {
		DispatchQueue.global(qos: .userInitiated).async {
			guard let url = Bundle.main.url(forResource: "world-cities", withExtension: "json") else {
				DispatchQueue.main.async {
					completion(.failure(.loadError))
				}
				return
			}

			do {
				let data = try Data(contentsOf: url)
				let cities = try JSONDecoder().decode(Cities.self, from: data)
				DispatchQueue.main.async {
					completion(.success(cities))
				}
			} catch {
				DispatchQueue.main.async {
					completion(.failure(.loadError))
				}
			}
		}
	}
}
