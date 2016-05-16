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
    var word = ""
    //Category of the term
    var category = ""
    //Definiton of term
    var definition = ""
    //Type of the term, used for filtering purposes
    var type = ""
    
    //Constructor
    init(text: String, category: String) {
        self.word = text
        self.category = category
    }
}