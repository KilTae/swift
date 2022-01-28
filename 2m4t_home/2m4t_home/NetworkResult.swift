//
//  NetworkResult.swift
//  2m4t_home
//
//  Created by 길태연 on 2022/01/20.
//

import Foundation
enum NetworkResult<T> {
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
}
