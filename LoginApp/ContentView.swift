//
//  ContentView.swift
//  LoginApp
//
//  Created by Timothy Collins on 4/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongpass = 0
    @State private var wronguser = 0
    @State private var screen = false

    
    var body: some View {
        NavigationView{
            VStack {
                Text("Login")
                    .font(.largeTitle)
                TextField("Username:", text: $username)
                    .frame(width: 300,height: 50)
                    .background(Color.black.opacity(0.05))
                    .border(.red,width: CGFloat(wronguser))
                SecureField("Password:", text: $password)
                    .frame(width: 300,height: 50)
                    .background(Color.black.opacity(0.05))
                    .border(.red,width: CGFloat(wrongpass))
                Button("Enter") {
                    check(username: username, password: password)
                    if(wronguser == 0 && wrongpass == 0 ){
                        
                    }
                }
                .frame(width: 300,height: 50)
                .background(Color.blue.opacity(0.05))
                
            }
        }
        .navigationBarHidden(true)
            .padding()
            
        }
    func check(username: String, password: String){
        if username.lowercased() == "panini"{
            wronguser = 0
            if password.lowercased() == "forever"{
             wrongpass = 0
             }
             else{
             wrongpass = 2
             }
             }
             else{
             wronguser = 2
             }
             
        }
    }




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
