//
//  Tag.swift
//  MealLog
//
//  Created by 홍창남 on 2020/06/01.
//  Copyright © 2020 hcn1519. All rights reserved.
//

import Foundation

enum TagType {
    /// 평가 타입
    case evaluation
    /// 요일
    case weekday
    /// 작성한 날짜
    case logCount
}

struct Tag {
    let content: String
    let type: TagType
}
