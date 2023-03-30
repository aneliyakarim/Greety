//
//  ModelData.swift
//  Greety
//
//  Created by Aneliya Mukhamedkarimova on 29/03/23.
//

import Foundation

var contacts: [Contact] = load("contactData.json")
var todayContacts: [Contact] = [contacts[0], contacts[1]]
var thisWeekContacts: [Contact] = [contacts[2], contacts[3]]
var nextWeekContacts: [Contact] = contacts

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
