//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by FartFire on 8/12/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    
    ]
    
    
    
    var body: some View {
        LazyVGrid(columns: columns) {
            FrameworkTitleView(name: "App clips", imageName: "app-clip")
            FrameworkTitleView(name: "App clips", imageName: "app-clip")
            FrameworkTitleView(name: "App clips", imageName: "app-clip")
            FrameworkTitleView(name: "App clips", imageName: "app-clip")
            FrameworkTitleView(name: "App clips", imageName: "app-clip")
            FrameworkTitleView(name: "App clips", imageName: "app-clip")
        }
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameworkTitleView: View {
    let name: String
    let imageName: String
    
    var body: some View {
        VStack{
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
   
}
