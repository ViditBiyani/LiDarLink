//
//  ListingsView.swift
//  learningiOS
//
//  Created by Uday Goyat on 10/13/23.
//

import Foundation

import SwiftUI
import SwiftData

struct ListingsView: View {
    @State private var currentUser = "udaygoyat"
    
    @Environment(\.modelContext) private var contextModel
    @Query private var listings: [ScanData]
    
    
    var body: some View {
        
        NavigationView{
            VStack {
                HStack {
                    Text("Current Listings")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                    Image(systemName: "line.3.horizontal.decrease.circle")
                        .font(.title)
                }
                .padding(.horizontal)
                ScrollView{
                    
                    NavigationLink(destination: SampleView()) {
                        HStack {
                            Image("room2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100) // Adjust the size as needed
                                .cornerRadius(10)
                                .shadow(color: .black.opacity(0.2), radius: 11)
                            
                            VStack(alignment: .leading) {
                                Text("Redesign chair")
                                    .font(.headline)
                                
                                Text("Budget: $\(25)")
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                        }
                        .padding()
                    }
                    
                    HStack {
                        Image("room3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100) // Adjust the size as needed
                            .cornerRadius(10)
                            .shadow(color: .black.opacity(0.2), radius: 11)
                        
                        VStack(alignment: .leading) {
                            Text("Redesign bed")
                                .font(.headline)
                            
                            Text("Budget: $\(1102)")
                                .foregroundColor(.gray)
                        }
                        Spacer()
                    }
                    .padding()
                    
                    HStack {
                        Image("room4")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100) // Adjust the size as needed
                            .cornerRadius(10)
                            .shadow(color: .black.opacity(0.2), radius: 11)
                        
                        VStack(alignment: .leading) {
                            Text("Decor for the entire house")
                                .font(.headline)
                            
                            Text("Budget: $\(5000)")
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                    }
                    .padding()
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
    }
}

