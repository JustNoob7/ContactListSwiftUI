//
//  NameList.swift
//  ContactListSwiftUI
//
//  Created by Ярослав Бойко on 13.12.2021.
//

import SwiftUI

struct NameList: View {
    
    let contacts: [Contact]
    
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                NavigationLink(contact.fullname ,destination: AboutContactView(contact: contact))
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct NameList_Previews: PreviewProvider {
    static var previews: some View {
        NameList(contacts: Contact.getContacts())
    }
}
