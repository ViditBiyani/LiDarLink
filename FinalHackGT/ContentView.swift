//
//  ContentView.swift
//  hackGt house improvement
//
//  Created by Uday Goyat on 10/15/23.
//

import Foundation
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ScanView()
                .tabItem {
                    Image(systemName: "qrcode.viewfinder")
                    Text("Scan")
                }

            ListingsView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Listings")
                }

            MarketplaceView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Marketplace")
                }

            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
}

