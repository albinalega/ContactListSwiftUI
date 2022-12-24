//
//  ContactListView.swift
//  ContactListSwiftUI
//
//  Created by Альбина Лега on 23.12.2022.
//

import SwiftUI

struct ContactsView: View {
    
    let contacts = Contact.getContactList()
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                NavigationLink(destination: ContactDetailsView(contact: contact)) {
                    Text(contact.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
        }
    }


struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
