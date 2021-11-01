//
//  AccountView.swift
//  DesignCode
//
//  Created by Mauricio Dias on 25/10/21.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView {
            List {
                VStack {
                    Image(systemName: "person.crop.circle.fill.badge.checkmark")
                        .symbolVariant(.circle.fill)
                        .font(.system(size: 32))
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.blue, .blue.opacity(0.3))
                        .padding()
                        .background(Circle().fill(.ultraThinMaterial))
                        .background(
                            Image(systemName: "hexagon")
                                .symbolVariant(.fill)
                                .foregroundColor(.blue)
                                .font(.system(size: 200))
                                .offset(x: -50, y: -100)
                    )
                    Text("Mauricio Chaves Dias")
                        .font(.title.weight(.semibold))
                    HStack {
                        Image(systemName: "location")
                            .imageScale(.small)
                            .opacity(0.2)
                        Text("Australia")
                            .foregroundColor(.secondary)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                Section {
                    NavigationLink {ContentView()} label: {
                        Label("Settings", systemImage: "gear")
                    }
                    NavigationLink { ContentView()} label: {
                        Label("Billing", systemImage: "creditcard")
                    }
                    NavigationLink { ContentView()} label: {
                        Label("Help", systemImage: "questionmark")
                    }
                }
                .accentColor(.primary)
                .listRowSeparatorTint(.blue)
                .listRowSeparator(.hidden)
 
                Section {
                    Link(destination: URL(string: "https://apple.com")!) {
                        HStack {
                            Label("Website", systemImage: "house")
                            Spacer()
                            Image(systemName: "link")
                                .foregroundColor(.secondary)
                        }
                    }
                    Link(destination: URL(string: "https://youtube.com")!) {
                        HStack {
                            Label("Youtube", systemImage: "tv")
                            Spacer()
                            Image(systemName: "link")
                                .foregroundColor(.secondary)
                        }
                    }
                }
                .accentColor(.primary)
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Account")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
