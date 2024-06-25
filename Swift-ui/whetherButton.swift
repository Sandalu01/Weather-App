//
//  whetherButton.swift
//  Swift-ui
//
//  Created by Sandalu Thushan on 2567-06-25.
//


import SwiftUI

struct whetherbuttonView: View {
    
    var title: String
    var textcolor: Color
    var backgroudcolor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 300,height: 50)
            .background(backgroudcolor)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke()
                // Border with rounded corners
            )
            .font(.system(size: 30,weight:.bold ,design: .default))
            .foregroundStyle(textcolor)
    }
}
