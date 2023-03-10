//
//  ContactListView.swift
//  ContactListSwiftUI
//
//  Created by Альбина Лега on 23.12.2022.
//

import SwiftUI

struct ContactListView: View {
    
    let contacts: [Contact]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                NavigationLink(
                    contact.fullName,
                    destination: ContactDetailsView(contact: contact)
                )
                
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}



struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contacts: Contact.getContactList())
    }
}
