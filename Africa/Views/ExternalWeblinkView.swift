//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Isaac Iniongun on 23/03/2023.
//

import SwiftUI

struct ExternalWeblinkView: View {
    let animal: Animal
    
    // MARK: - BODY
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                
                Spacer()
                
                Link(destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!) {
                    HStack {
                        Image(systemName: "arrow.up.right.square")
                        Text(animal.name)
                    }
                }
                .foregroundColor(.accentColor)
                
            } //: HSTACK
        } //: BOX
    }
}

struct ExternalWeblinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWeblinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
