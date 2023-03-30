//
//  Contact.swift
//  Greety
//
//  Created by Aneliya Mukhamedkarimova on 29/03/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct Contact: Hashable, Codable, Identifiable {
    var id: Int
    var firstName: String
    var lastName: String
    var position: String
    var company: String
    var email: String
    var phone: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
