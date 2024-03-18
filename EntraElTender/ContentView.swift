//
//  ContentView.swift
//  EntraElTender
//
//  Created by Gaspar Perez Mazas on 11/03/2024.
//

import SwiftUI
import CoreLocation // For location services
import UserNotifications // For notifications

struct ContentView: View {
    @State private var notificationsEnabled = false

    var body: some View {
        VStack {
            Text("Notificaciones de lluvia")
                .font(.largeTitle)
            Text("Activar notificaciones para entrar el tender")
            
            Toggle("Activar notificaciones", isOn: $notificationsEnabled)
                .onChange(of: notificationsEnabled) {
                    if notificationsEnabled { // Access the value directly
                        requestNotificationPermissions()
                    }
                }
        }
        .padding()
    }

    func requestNotificationPermissions() {
        // Request user permission for notifications
    }
}
