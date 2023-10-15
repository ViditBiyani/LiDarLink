//
//  MarketplaceView.swift
//  learningiOS
//
//  Created by Uday Goyat on 10/13/23.
//

import Foundation

import SwiftUI

struct MarketplaceView: View {
    var body: some View {
        NavigationView{
            VStack {
                HStack {
                    Text("Marketplace")
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
                                Text("Redesign living room")
                                    .font(.headline)
                                Text("Username: John Apple")
                                    .foregroundColor(.gray)
                                Text("Lowest Bid: $\(476)")
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
                            Text("Username: John Smith")
                                .foregroundColor(.gray)
                            Text("Lowest Bid: $\(1102)")
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
                            Text("Decor for room")
                                .font(.headline)
                            Text("Username: Tim Apple")
                                .foregroundColor(.gray)
                            Text("Lowest Bid: $\(46)")
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
