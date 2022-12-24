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
        VStack {
            Text(contact.fullName)
                .font(.largeTitle)
                .bold()
            
            List {
                HStack {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .clipped()
                    Spacer()
                }
                HStack {
                    Text("Phone")
                    Spacer()
                    Text(contact.phoneNumber)
                }
                
                HStack {
                    Text("Email")
                    Spacer()
                    Text(contact.email)
                }
            }
        }
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(contact: Contact.getContactList().randomElement()!)
    }
}
