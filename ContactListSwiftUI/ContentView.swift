//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Ярослав Бойко on 13.12.2021.
//

import SwiftUI


struct ContentView: View {
    
    let contacts = Contact.getContacts()
    
    var body: some View {
        TabView {
            NameList(contacts: contacts)
                .tabItem {
                    Image(systemName: "person")
                }
            ContactList(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
