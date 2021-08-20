//
//  +String.swift
//  Leuna
//
//  Created by Arshin Jain on 8/19/21.
//

import Foundation

extension String {
    func occurrencesOf(string: String) -> Int {
        return self.components(separatedBy:string).count - 1
    }
}
