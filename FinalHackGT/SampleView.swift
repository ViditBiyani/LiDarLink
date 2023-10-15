//
//  SampleView.swift
//  hackGt house improvement
//
//  Created by Uday Goyat on 10/15/23.
//

import Foundation
import SwiftUI

struct Bidding: Identifiable {
    var id = UUID()
    var bidderName: String
    var bidAmount: Double
}

func generateRandomBiddings(count: Int) -> [Bidding] {
    let bidderNames = ["User1", "User2", "User3", "User4", "User5"]
    
    var biddings: [Bidding] = []
    
    for _ in 0..<count {
        let randomBidderName = bidderNames.randomElement() ?? "Unknown Bidder"
        let randomBidAmount = Double.random(in: 10.0...1000.0) // Adjust the range as needed
        
        let bidding = Bidding(bidderName: randomBidderName, bidAmount: randomBidAmount)
        biddings.append(bidding)
    }
    
    print(biddings)
    return biddings
}

struct SampleView: View {
    let biddings = generateRandomBiddings(count: 5)
    @State private var bidAmount = "0"
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Image
                Image("room2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(10)
                    .padding()
                
                // Author Name
                Text("By: Uday Goyat")
                    .foregroundColor(.gray)
                    .font(.subheadline)
                    .padding(.horizontal)
                
                // Title
                Text("Redesign Living Room")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                
                // Description
                Text("I have a very big room, and it needs redegning, I am aiming for gothic. ")
                    .foregroundColor(.black)
                    .font(.body)
                    .padding(.horizontal)
                
                // Biddings
                Text("Biddings:")
                    .font(.headline)
                    .padding(.horizontal)
                HStack {
                    Text("John Apple")
                        .foregroundColor(.black)
                        .font(.subheadline)
                    Spacer()
                    Text("$476")
                        .foregroundColor(.green)
                        .font(.subheadline)
                }.padding()
                HStack {
                    Text("Vidit Biyani")
                        .foregroundColor(.black)
                        .font(.subheadline)
                    Spacer()
                    Text("$5000")
                        .foregroundColor(.green)
                        .font(.subheadline)
                }.padding()
                HStack {
                    Text("Tom Cruz")
                        .foregroundColor(.black)
                        .font(.subheadline)
                    Spacer()
                    Text("$5200")
                        .foregroundColor(.green)
                        .font(.subheadline)
                }.padding()
                HStack {
                    Text("Jeff Smith")
                        .foregroundColor(.black)
                        .font(.subheadline)
                    Spacer()
                    Text("$9998")
                        .foregroundColor(.green)
                        .font(.subheadline)
                }.padding()
                HStack {
                    Text("Uday 2.0")
                        .foregroundColor(.black)
                        .font(.subheadline)
                    Spacer()
                    Text("$9999")
                        .foregroundColor(.green)
                        .font(.subheadline)
                }.padding()
                
                HStack{
                    TextField("Enter bid amount", text: $bidAmount)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .keyboardType(.decimalPad) // Allows entering decimal numbers

                                Button(action: {
                                    // Perform the bid action with the bidAmount
                                    if let bidValue = Double(bidAmount) {
                                        print("Bid amount entered: \(bidValue)")
                                        // You can perform additional actions here, such as sending the bid to a server
                                    } else {
                                        print("Invalid bid amount")
                                        // Handle invalid bid amount, e.g., show an alert
                                    }
                                }) {
                                    Text("Bid")
                                        .font(.headline)
                                        .padding()
                                        .background(Color.green)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                }
                            }
                            .padding()
                }
               
                
//                Button(action: {
//                    print("Button tapped")
//                }) {
//                    Text("Tap me!")
//                        .font(.headline)
//                        .padding()
//                        .background(Color.green)
//                        .foregroundColor(.white)
//                        .cornerRadius(10)
//                }
//                .padding(.horizontal)
                
//                Form {
//                    Section(header: Text("Bid Amount")) {
//                        Text("Bid Amount")
//                    }
//                    
//                    
//                    Button(action: {
//                        print("Button tapped!")
//                    }) {
//                        Text("Tap me!")
//                            .font(.headline)
//                            .padding()
//                            .background(Color.green)
//                            .foregroundColor(.white)
//                            .cornerRadius(10)
//                    }
//                    
//                    Spacer()
                    
                    //                        List(biddings) { bidding in
                    //                            HStack {
                    //                                Text("\(bidding.bidderName):")
                    //                                    .foregroundColor(.black)
                    //                                    .font(.subheadline)
                    //                                Spacer()
                    //                                Text("$\(String(format: "%.2f", bidding.bidAmount))")
                    //                                    .foregroundColor(.green)
                    //                                    .font(.subheadline)
                    //                            }
                    //                            .padding(.horizontal)
                    //                        }
                    //                    }
//                }
                //                .navigationBarTitle("listing.title", displayMode: .inline)
//            }
        }
    }
}
//
//struct BasicView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationView {
//            SampleView()
//        }
//    }
//}
