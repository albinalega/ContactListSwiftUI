//
//  NumbersView.swift
//  ContactListSwiftUI
//
//  Created by Альбина Лега on 23.12.2022.
//

import SwiftUI

struct NumbersView: View {
    
    let contacts = Contact.getContactList()
    
    var body: some View {
        List(contacts) { contact in
            Section(header: Text(contact.fullName)) {
                Text(contact.phoneNumber)
                Text(contact.email)
            }
            
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView()
    }
}
