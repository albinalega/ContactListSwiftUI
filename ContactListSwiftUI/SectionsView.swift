//
//  NumbersView.swift
//  ContactListSwiftUI
//
//  Created by Альбина Лега on 23.12.2022.
//

import SwiftUI

struct SectionsView: View {
    
    let contacts: [Contact]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                Section(header: Text(contact.fullName).font(.headline)) {
                    Label(contact.phoneNumber, systemImage: "phone")
                    Label(contact.email, systemImage: "tray")
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        SectionsView(contacts: Contact.getContactList())
    }
}
