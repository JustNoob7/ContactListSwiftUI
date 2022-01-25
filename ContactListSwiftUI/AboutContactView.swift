//
//  AboutContactView.swift
//  ContactListSwiftUI
//
//  Created by Ярослав Бойко on 13.12.2021.
//

import SwiftUI

struct AboutContactView: View {
    let contact: Contact
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .trailing)
                Spacer()

            }
            Label(contact.phone, systemImage: "phone")
            Label(contact.email, systemImage: "tray")
        }
        .listStyle(.insetGrouped)
    }
}

struct AboutContactView_Previews: PreviewProvider {
    static var previews: some View {
        AboutContactView(contact: Contact.getContacts().first!)
    }
}
