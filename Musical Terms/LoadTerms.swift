//
//  LoadTerms.swift
//  Musical Terms
//
//  Created by Ryan Wang on 2016-04-28.
//  Copyright © 2016 Ryan Wang. All rights reserved.
//

import Foundation
import UIKit

extension TermTableViewController {
    func loadTable() {
        
        //DYNAMICS
        let term0 = Term(text: "Pianissimo", category: "Dynamics")
        let term1 = Term(text: "Piano", category: "Dynamics")
        let term2 = Term(text: "Mezzo Piano", category: "Dynamics")
        let term3 = Term(text: "Mezzo Forte", category: "Dynamics")
        let term4 = Term(text: "Forte", category: "Dynamics")
        let term5 = Term(text: "Fortissimo", category: "Dynamics")
        
        let term6 = Term(text: "Cresendo", category: "Dynamics")
        let term7 = Term(text: "Decresendo", category: "Dynamics")
        let term8 = Term(text: "Diminuendo", category: "Dynamics")
        let term9 = Term(text: "Fortepiano", category: "Dynamics")
        let term10 = Term(text: "Sforzando", category: "Dynamics")
        
        
        term0.definition = "very soft"
        term1.definition = "soft"
        term2.definition = "moderately soft"
        term3.definition = "moderately loud"
        term4.definition = "loud"
        term5.definition = "very loud"
        
        term6.definition = "becoming louder"
        term7.definition = "becoming softer"
        term8.definition = "becoming softer"
        term9.definition = "loud, then suddenly soft"
        term10.definition = "sudden strong accent on note or chord"
        
        
        table += [term0, term1, term2, term3, term4, term5]
        table += [term6, term7, term8, term9, term10]
        
        //TEMPI
        let t11 = Term(text: "Largo", category: "Tempo")
        let t12 = Term(text: "Larghetto", category: "Tempo")
        let t13 = Term(text: "Lento", category: "Tempo")
        let t14 = Term(text: "Adagio", category: "Tempo")
        
        let t15 = Term(text: "Andante", category: "Tempo")
        let t16 = Term(text: "Andantino", category: "Tempo")
        let t17 = Term(text: "Moderato", category: "Tempo")
        let t18 = Term(text: "Allegretto", category: "Tempo")
        
        let t19 = Term(text: "Allegro", category: "Tempo")
        let t20 = Term(text: "Presto", category: "Tempo")
        let t21 = Term(text: "Prestissimo", category: "Tempo")
        
        
        t11.definition = "very slow and broad, 40-60bpm"
        t12.definition = "less slow than largo, 60-66bpm"
        t13.definition = "slow, 50-66bpm"
        t14.definition = "slow, at a crawling pace, 66-76bpm"
        
        t15.definition = "at a walking pace, 76-108bpm"
        t16.definition = "slightly faster than Andante"
        t17.definition = "moderate speed, 108-120bpm"
        t18.definition = "farily quick, 114-120bpm"
        
        t19.definition = "lively, fast, 120-168bpm"
        t20.definition = "very fast, 168 - 200bpm"
        t21.definition = "as fast as possible, 200+bpm"
        
        table+=[t11, t12, t13, t14, t15, t16, t17, t18]
        table+=[t19, t20, t21]
        
        //WORDS RELATED TO TEMPO
        let t22 = Term(text: "A Tempo", category: "Tempo")
        let t23 = Term(text: "Accelerando", category: "Tempo")
        let t24 = Term(text: "Allargando", category: "Tempo")
        let t25 = Term(text: "L'istesso Tempo", category: "Tempo")
        
        let t26 = Term(text: "Meno Mosso", category: "Tempo")
        let t27 = Term(text: "Più Mosso", category: "Tempo")
        let t28 = Term(text: "Rallentando", category: "Tempo")
        let t29 = Term(text: "Ritardando", category: "Tempo")
        
        let t30 = Term(text: "Ritenuto", category: "Tempo")
        let t31 = Term(text: "Rubato", category: "Tempo")
        let t32 = Term(text: "Stringendo", category: "Tempo")
        let t33 = Term(text: "Tempo Primo", category: "Tempo")
        
        t22.definition = "in time; return to tempo prior to change"
        t23.definition = "becoming quicker"
        t24.definition = "broadening, becoming slower"
        t25.definition = "at the same tempo"
        
        t26.definition = "less movement, slower"
        t27.definition = "more movement, quicker"
        t28.definition = "slowing down gradually"
        t29.definition = "slowing down gradually"
        
        t30.definition = "suddenly slower, held back"
        t31.definition = "flexible tempo, using slight variations of speed to enhance expression"
        t32.definition = "pressing, becoming faster"
        t33.definition = "return to the original tempo"
        
        table+=[t22, t23, t24, t25, t26, t27, t28, t29, t30, t31,t32, t33]
        
        
        print("table loaded")

    }
}
