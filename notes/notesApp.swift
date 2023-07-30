//
//  notesApp.swift
//  notes
//
//  Created by Сергей Дарьин on 30.07.2023.
//

import SwiftUI

@main
struct notesApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: notesDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
