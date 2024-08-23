//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by FartFire on 8/12/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
             List {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(destination: 
                                        FrameworkDetailView(framework: framework,
                                                            isShowingDetailView: $viewModel.isShowingDetailView)) {
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            .navigationTitle("📱FrameWorks")
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}

