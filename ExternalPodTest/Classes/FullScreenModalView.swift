//
//  ContentView.swift
//  PodSample
//
//  Created by Syed Wajahat Ali on 09/02/2024.
//

import SwiftUI

public struct FullScreenModalView: View {
    @Environment(\.presentationMode) var presentationMode
    
    public init() {}
    
    public var body: some View {
        VStack{
            Text("Presented full screen from SDK Directly")
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.blue)
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    presentationMode.wrappedValue.dismiss()
                }
        }
    }
}


#Preview {
    FullScreenModalView()
}
