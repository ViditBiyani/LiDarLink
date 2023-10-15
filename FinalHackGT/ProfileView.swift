//
//  ProfileView.swift
//  learningiOS
//
//  Created by Uday Goyat on 10/13/23.
//

import Foundation
import SwiftUI

struct ProfileView: View {
    @State private var name = "Uday Goyat"
    @State private var description = "The Best Designer in Atlanta, GA \n I am the coolest mf in town"
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Image("profile")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 130, height: 130)
                        .padding(22)
                        .padding(.top, -40)
                    
                    Image(systemName: "checkmark.seal.fill")
                        .font(.system(size: 33))
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .offset(x: 65, y:-110)
                    
                }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                
                VStack{
                    Text("Hello, \(name)")
                        .font(.title)
                        .fontWeight(.bold)
                        .offset(x: 35, y: -70)
                    
                    Text("\(description)")
                        .font(.system(size: 15))
                        .fontWeight(.light)
                        .foregroundColor(.gray)
                        .offset(x: 30, y: -70)
    
                }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                
                VStack{
                    Text("Your Portfolio")
                        .font(.title)
                        .fontWeight(.bold)
                        .offset(x: 35, y: -50)
                }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                
                VStack{
                    Image("sample2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                        .cornerRadius(10)
                        .offset(x: -0, y: 30)
                        .shadow(color: .black.opacity(0.2), radius: 11)
                    
                    Image("sample4")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                        .cornerRadius(10)
                        .offset(x: -0, y: 30)
                        .shadow(color: .black.opacity(0.2), radius: 11)
                    
                    
                    
                    Image("sample3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                        .cornerRadius(10)
                        .shadow(color: .black.opacity(0.2), radius: 11)
                        .offset(x: -0, y: 30)
                }
                    .padding()
                    .offset(x: -0, y:-70)
                
                    
            }
        }
    }
}
