//
//  LoginView.swift
//  MovieFinderSwiftUI
//
//  Created by user on 15.03.2021.
//

import SwiftUI

struct LoginView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    @AppStorage ("stored_User") var user = "user"
    
    var body: some View {
        VStack {
        HStack {
        VStack (alignment: .leading, spacing: 1) {
            
            Text("Login")
                .font(.custom("Helvetica Neue", size: 17))
                .padding(.horizontal)
                
            TextField("username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .cornerRadius(5.0)
                .padding(.horizontal)
            
            Text("Password")
                .font(.custom("Helvetica Neue", size: 17))
                .padding(.top, 10)
                .padding(.horizontal)
            
            SecureField("password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
                .cornerRadius(5.0)
        }
        }
            Button(action:{}, label: {
                Text("Sign In")
            })
            .padding(.top, 10)
            //.opacity(username != "" && password != "" ? 1 : 0)
            .disabled(username != "" && password != "" ? false : true)
        }
    }
    
    func authenticateUser() -> Bool {
        
        if username == user {
            
            return true
        }
        
        return false
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

