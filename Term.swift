//
//  Term.swift
//  Musical Terms
//
//  Created by Ryan Wang on 2016-04-26.
//  Copyright © 2016 Ryan Wang. All rights reserved.
//

import Foundation

class Term {
    //Text of the term
    var text = ""
    //Category of the term
    var category = ""
    
    //Constructor
    init(text: String, category: String) {
        self.text = text
        self.category = category
    }
}