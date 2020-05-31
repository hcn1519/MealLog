//
//  TagViewModel.swift
//  MealLog
//
//  Created by 홍창남 on 2020/05/31.
//  Copyright © 2020 hcn1519. All rights reserved.
//

import Foundation
import SwiftUI

class TagViewModel: ObservableObject {

    @Published var cornerRadius: CGFloat = 8.0
    @Published var backgroundColor: Color = Color.pink
    @Published var fontColor: Color = Color.white
    @Published var font: Font = Font.caption
    @Published var text: String = "Freedom!🕺💃"
    @Published var padding = EdgeInsets(top: 8,
                                        leading: 8,
                                        bottom: 8,
                                        trailing: 8)
}
