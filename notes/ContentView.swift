//
//  ContentView.swift
//  notes
//
//  Created by Сергей Дарьин on 30.07.2023.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: notesDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(notesDocument()))
    }
}
