//
//  UserDetails.swift
//  FriendFace
//
//  Created by Alvaro Valdes Salazar on 05-10-20.
//

import SwiftUI

struct UserDetailsView: View {
   
    private var users = [User]()
    var user: User

//    var friends = [Friend]()
    
    var body: some View {
        Text(String(user.name))
    }
    
    
    init(_: ()) {
        guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else {
            print("Invalid URL")
            return
        }
        
        let request = URLRequest(url: url)

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode([User].self, from: data) {
                    DispatchQueue.main.async {
                        self.users = decodedResponse
                    }
                    return
                }
            }
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }
}

struct UserDetailsView_Previews: PreviewProvider {
    static let jOhn = User(id: "123", name: "John Smith", age: 54, company: "Apple", email: "john.smith@apple.com", address: "Cupertino", friends: [])
    
    
//    static let juan = User(
//        id: "50a48fa3-2c0f-4397-ac50-64da464f9954", name: "Alford Rodriguez", age: 21, company: "Imkan", email: "alfordrodriguez@imkan.com", address: "Mon adresse 13127 VITROLLES", friends: []))
    
    static var previews: some View {
        UserDetailsView(user: jOhn)
        
    }
}
