//
//  File.swift
//  Hayun_BOJ
//
//  Created by yun on 2023/08/10.
//

import Foundation


func solution(){
    let input = readLine()!.split(separator: " ").map{Double(String($0))!}
    
    print(input[0]/input[1])
}
