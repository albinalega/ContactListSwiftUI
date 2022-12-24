//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Альбина Лега on 23.12.2022.
//

import Foundation
import SwiftUI

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
//
//    static func getContact() -> Contact {
//        getContact(Int.random(in: 1...11))
//    }
    
//    static func getContact(_ idx: Int) -> Contact {
//        let names = DataManager.shared.names
//        let surnames = DataManager.shared.surnames
//        let phoneNumbers = DataManager.shared.phoneNumbers
//        let emails = DataManager.shared.emails
//
//        let name = names[Int.random(in: 0..<names.count)]
//        let surname = surnames[Int.random(in: 0..<names.count)]
//        let phoneNumber = phoneNumbers[Int.random(in: 0..<names.count)]
//        let email = emails[Int.random(in: 0..<names.count)]
//
////        let iterationCount = min(
////            names.count,
////            surnames.count,
////            phoneNumbers.count,
////            emails.count
////        )
//
//        let contact = Contact(
//            name: name,
//            surname: surname,
//            email: email,
//            phoneNumber: phoneNumber
//        )
//
//        return contact
//    }
//}

