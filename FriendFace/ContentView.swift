//
//  ContentView.swift
//  FriendFace
//
//  Created by Alvaro Valdes Salazar on 04-10-20.
//

import SwiftUI

struct ContentView: View {
    
//    @Environment(\.managedObjectContext) var moc

    @State private var users = [User]()
    

    var body: some View {
        NavigationView {
            List(users, id: \.id) { user in
                NavigationLink(destination: Text("Detail")) {
                    Text("Row \\")
                }
            }
            .onAppear(perform: loadData)
            }
        }


    
    func loadData () {
        



    }

}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
