//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Альбина Лега on 23.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    private let contacts = Contact.getContactList()
    
    var body: some View {
        TabView {
            ContactListView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            
            SectionsView(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
