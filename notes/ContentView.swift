//
//  ContentView.swift
//  notes
//
//  Created by Сергей Дарьин on 30.07.2023.
//

import SwiftUI

enum UIButtons: String{
    case save = "Save"
    case saveAs = "Save as..."
    case open = "Open file"
    case new = "New file"
}

let buttons : [UIButtons] =
[.save, .saveAs, .new, .open]

struct ContentView: View {
    @Binding var document: notesDocument

    var body: some View {
        HStack{
            ForEach(buttons, id: \.self){InterfaceButton in
                Button(action: {
                    didTap(_item: InterfaceButton)},
                       label:{
                    Text(InterfaceButton.rawValue)
                        .font(.system(size: 14, weight: .bold))
                }).padding(0)
            }
        }
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(notesDocument()))
    }
}

func didTap(_item : UIButtons ){
    switch _item{
    case .save:
        save()
    case .saveAs:
        saveAs()
    case .new:
        New()
    case .open:
        Open()
    }
}

func save(){
    
}

func saveAs(){
    
}

func New(){
    
}

func Open(){
    
}
