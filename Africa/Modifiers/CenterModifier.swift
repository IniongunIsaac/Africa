//
//  CenterModifier.swift
//  Africa
//
//  Created by Isaac Iniongun on 24/03/2023.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
