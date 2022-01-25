//
//  Contact.swift
//  ContactListSwiftUI
//
//  Created by Ярослав Бойко on 13.12.2021.
//

import Foundation

struct Contact: Identifiable {
    let name: String
    let surname: String
    let phone: String
    let email: String
    let id: Int
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getContacts() -> [Contact] {
        var contacts: [Contact] = []
        
        let names = DataManager.shared.names.shuffled()
        let surname = DataManager.shared.surnames.shuffled()
        let phones = DataManager.shared.phoneNumbers.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        let iterationCount = min(names.count, surname.count, phones.count, emails.count)
        
        for index in 0..<iterationCount {
            let contact = Contact(
                name: names[index],
                surname: surname[index],
                phone: phones[index],
                email: emails[index],
                id: index + 1
            )
            
            contacts.append(contact)
        }
        
        return contacts
    }
    
    static func getContact() -> Contact {
        let contact = Contact(
            name: DataManager.shared.names.randomElement() ?? "",
            surname: DataManager.shared.surnames.randomElement() ?? "",
            phone: DataManager.shared.phoneNumbers.randomElement() ?? "",
            email: DataManager.shared.emails.randomElement() ?? "",
            id: 1
        )
        
        return contact
    }
}
