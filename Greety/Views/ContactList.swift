//
//  ContactList.swift
//  Greety
//
//  Created by Aneliya Mukhamedkarimova on 29/03/23.
//

import SwiftUI

struct ContactList: View {
    var body: some View {
        NavigationView {
            List {
                VStack(alignment: .leading) {
                    Text("TODAY")
                        .padding(.top, 18)
                    HStack {
                        Spacer()
                        NoBirthdaysImage()
                        Spacer()
                    }
                    Text("Sorry, there are no birthdays today.")
                        .frame(maxWidth: .infinity)
                        .font(Font.headline)
                        .padding(.top, 12)
                        .padding(.bottom, 12)
                        .multilineTextAlignment(.center)
                    Text("Don't forget to check your contact book and add dates of birthdays for your contacts.")
                        .frame(maxWidth: .infinity)
                        .padding(.bottom, 12)
                        .multilineTextAlignment(.center)
                }
                
                
                Text("THIS WEEK")
                    .padding(.top, 18)
                ForEach(thisWeekContacts, id: \.id) { contact in
                    NavigationLink {
                        ContactDetail(contact: contact)
                    } label: {
                        ContactRow(contact: contact)
                    }
                }
                Text("NEXT WEEK")
                    .padding(.top, 18)
                ForEach(contacts, id: \.id) { contact in
                    NavigationLink {
                        ContactDetail(contact: contact)
                    } label: {
                        ContactRow(contact: contact)
                    }
                }
            }
            .listStyle(InsetListStyle())
            .navigationTitle("Greety")
            .toolbar {
                Button(action: {}) {
                    Image(systemName: "gearshape.fill")
                }
            }
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList()
    }
}
