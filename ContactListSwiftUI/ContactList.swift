//
//  ContactList.swift
//  ContactListSwiftUI
//
//  Created by Ярослав Бойко on 13.12.2021.
//

import SwiftUI

struct ContactList: View {
    
    let contacts: [Contact]
    
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                Section {
                    Label(contact.phone, systemImage: "phone")
                    Label(contact.email, systemImage: "tray")
                } header: {
                    Text(contact.fullname)
                        .font(.headline)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(contacts: Contact.getContacts())
    }
}
