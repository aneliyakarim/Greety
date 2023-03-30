//
//  ContentDetail.swift
//  Greety
//
//  Created by Aneliya Mukhamedkarimova on 29/03/23.
//

import SwiftUI

struct ContactDetail: View {
    var contact: Contact
    
    var body: some View {
        VStack {
            ContactDetailBackground()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleImage(image: contact.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack {
                Text(contact.firstName + " " + contact.lastName)
                    .font(.title)
                Text(contact.position)
                    .font(.subheadline)
                Text(contact.company)
                    .font(.subheadline)
            }
            Divider()
            
            HStack {
                Image(systemName: "envelope.fill")
                VStack {
                    Text("email to")
                        .font(.title)
                    Text(contact.email)
                        .foregroundColor(.secondary)
                }
            }
            
            HStack {
                Image(systemName: "phone.fill")
                VStack {
                    Text("call")
                        .font(.title)
                    Text(contact.phone)
                        .foregroundColor(.secondary)
                }
            }
            
            
            HStack {
                Image(systemName: "bubble.right.fill")
                VStack {
                    Text("whatsapp")
                        .font(.title)
                    Text(contact.phone)
                        .foregroundColor(.secondary)
                }
            }
            
            
            Spacer()
        }
    }
}

struct ContactDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetail(contact: contacts[0])
    }
}
