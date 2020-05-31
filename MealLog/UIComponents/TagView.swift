//
//  TagView.swift
//  MealLog
//
//  Created by 홍창남 on 2020/05/31.
//  Copyright © 2020 hcn1519. All rights reserved.
//

import Foundation
import SwiftUI

struct TagView: View {
    @ObservedObject var viewModel: TagViewModel

    var body: some View {
        HStack {
            Text(viewModel.text)
                .font(Font.caption)
                .foregroundColor(viewModel.fontColor)
                .padding(viewModel.padding)
        }.background(viewModel.backgroundColor)
            .cornerRadius(viewModel.cornerRadius)
    }
}

struct TagViewPreviews: PreviewProvider {
    static var previews: some View {
        TagView(viewModel: TagViewModel())
            .previewLayout(.fixed(width: 250, height: 200))
    }
}
