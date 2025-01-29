//
//  TextAreaView.swift
//  INDI-POLITICS
//
//  Created by Atharva Lavhate on 23/01/25.
//

import SwiftUI

struct TextAreaView: View {
    @Binding var text: String
    let placeholder: String
    init(_ placeholder: String, text:Binding <String>) {
        self.placeholder = placeholder
        self._text = text
        UITextView.appearance().backgroundColor = .clear
    }
    var body: some View {
        ZStack(alignment: .topLeading){
            TextEditor(text: $text)
                .padding(.vertical,-3)
                .background(Color(.clear))
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(Color(.placeholderText))
                    .padding(.horizontal,8)
                    .padding(.vertical,5)
            }
            
        }
        
        .font(.body)
    }
}

