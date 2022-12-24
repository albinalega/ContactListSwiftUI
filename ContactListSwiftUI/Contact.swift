//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Альбина Лега on 23.12.2022.
//

import Foundation

struct Contact: Identifiable {
    
    let id = UUID()
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Contact {
    static func getContactList() -> [Contact] {
        
        var people: [Contact] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            phoneNumbers.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            let person = Contact(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phoneNumbers[index]
            )
            
            people.append(person)
        }
        
        return people
    }
}
