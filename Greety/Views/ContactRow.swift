//
//  ContactRow.swift
//  Greety
//
//  Created by Aneliya Mukhamedkarimova on 29/03/23.
//

import SwiftUI

struct ContactRow: View {
    var contact: Contact
    
    var body: some View {
        HStack {
            contact.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(contact.firstName + " " + contact.lastName)
                .font(.title)
            Spacer()
        }
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(contact: contacts[1])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
