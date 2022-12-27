//
//  ContactDetailsView.swift
//  ContactListSwiftUI
//
//  Created by Альбина Лега on 23.12.2022.
//

import SwiftUI

struct ContactDetailsView: View {
    
    let contact: Contact
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
                Spacer()
            }
            
            Label(contact.phoneNumber, systemImage: "phone")
            Label(contact.email, systemImage: "tray")
        }
        .navigationTitle(contact.fullName)
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(contact: Contact.getContactList().randomElement()!)
    }
}
