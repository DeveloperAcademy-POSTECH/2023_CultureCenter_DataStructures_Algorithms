//
//  BOJ 2562.swift
//  Hayun_BOJ
//
//  Created by yun on 2023/08/10.
//

import Foundation

func solution(){
    
    var maxV = 0, maxI = 0
    
    for i in 1...9{
        let input = Int(readLine()!)
        if let input = input{
            if maxV <= input {
                maxV = input
                maxI = i
            }
        }
    }
    print(maxV)
    print(maxI)
}
