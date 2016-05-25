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
        
        
        //STYLE
        let t34 = Term(text: "Ad Libitum", category: "Style")
        let t35 = Term(text: "Agitato", category: "Style")
        let t36 = Term(text: "Animato", category: "Style")
        let t37 = Term(text: "Brillante", category: "Style")
        
        let t38 = Term(text: "Calando", category: "Style")
        let t39 = Term(text: "Cantabile", category: "Style")
        let t40 = Term(text: "Con Brio", category: "Style")
        let t41 = Term(text: "Con Expressione", category: "Style")
        
        let t42 = Term(text: "Con Fuoco", category: "Style")
        let t43 = Term(text: "Con Grazia", category: "Style")
        let t44 = Term(text: "Dolce", category: "Style")
        let t45 = Term(text: "Dolente", category: "Style")
        
        let t46 = Term(text: "Espressivo", category: "Style")
        let t47 = Term(text: "Grandioso", category: "Style")
        let t48 = Term(text: "Grazioso", category: "Style")
        let t49 = Term(text: "Giocoso", category: "Style")
        
        let t50 = Term(text: "Largamente", category: "Style")
        let t51 = Term(text: "Legato", category: "Style")
        let t52 = Term(text: "Leggiero", category: "Style")
        let t53 = Term(text: "Maestoso", category: "Style")
        
        let t54 = Term(text: "Marcato", category: "Style")
        let t55 = Term(text: "Martellato", category: "Style")
        let t56 = Term(text: "Mesto", category: "Style")
        let t57 = Term(text: "Morendo", category: "Style")
        
        let t58 = Term(text: "Peasante", category: "Style")
        let t59 = Term(text: "Risoluto", category: "Style")
        let t60 = Term(text: "Scherzando", category: "Style")
        let t61 = Term(text: "Semplice", category: "Style")
        
        let t62 = Term(text: "Sonore", category: "Style")
        let t63 = Term(text: "Sostenuto", category: "Style")
        let t64 = Term(text: "Sotto Voce", category: "Style")
        let t65 = Term(text: "Spiritoso", category: "Style")

        let t66 = Term(text: "Staccato", category: "Style")
        let t67 = Term(text: "Tenuto", category: "Style")
        let t68 = Term(text: "Tranquillo", category: "Style")
        let t69 = Term(text: "Vivo", category: "Style")
        
        t34.definition = "at the performer's liberty"
        t35.definition = "agitated, excited"
        t36.definition = "animated, spirited"
        t37.definition = "brilliant"
        
        t38.definition = "becoming slower and softer"
        t39.definition = "in a singing style"
        t40.definition = "with vigor or vivacity"
        t41.definition = "with expression"
        
        t42.definition = "with fire"
        t43.definition = "with grace"
        t44.definition = "sweet"
        t45.definition = "doleful, sorrowful"
        
        t46.definition = "expressively"
        t47.definition = "grand, grandiose"
        t48.definition = "graceful"
        t49.definition = "joyfully"
        
        t50.definition = "broadly"
        t51.definition = "smooth"
        t52.definition = "light"
        t53.definition = "majestic"
        
        t54.definition = "marked, emphasized"
        t55.definition = "strongly accented, hammered"
        t56.definition = "sad, mournful"
        t57.definition = "dying, fading away"
        
        t58.definition = "weighty, with emphasis"
        t59.definition = "resolute"
        t60.definition = "playful"
        t61.definition = "simple"
        
        t62.definition = "sonorous"
        t63.definition = "sustained"
        t64.definition = "soft, subdued, under the breath"
        t65.definition = "spirited"
        
        t66.definition = "short and detached"
        t67.definition = "held, sustained"
        t68.definition = "traquil"
        t69.definition = "lively"
        
        table+=[t34, t35, t36, t37, t38, t39, t40, t41]
        table+=[t42, t43, t44, t45]
        table+=[t46, t47, t48, t49]
        table+=[t50, t51, t52, t53]
        table+=[t54, t55, t56, t57]
        table+=[t58, t59, t60, t61]
        table+=[t62, t63, t64, t65]
        table+=[t66, t67, t68, t69]
        
        //OTHER ITALIAN TERMS
        let t70 = Term(text: "Arco", category: "Other Italian Terms")
        let t71 = Term(text: "Attacca", category: "Other Italian Terms")
        let t72 = Term(text: "Con Pedale", category: "Other Italian Terms")
        let t73 = Term(text: "Con Sordino", category: "Other Italian Terms")
        
        let t74 = Term(text: "Da Capo, D.C.", category: "Other Italian Terms")
        let t75 = Term(text: "Da Capo Al Fine", category: "Other Italian Terms")
        let t76 = Term(text: "Dal Segno, D.S.", category: "Other Italian Terms")
        let t77 = Term(text: "Fine", category: "Other Italian Terms")
        
        let t78 = Term(text: "Loco", category: "Other Italian Terms")
        let t79 = Term(text: "Mano Destra", category: "Other Italian Terms")
        let t80 = Term(text: "Mano Sinstra", category: "Other Italian Terms")
        let t81 = Term(text: "Ottava, 8ve", category: "Other Italian Terms")
        
        let t82 = Term(text: "Pizzicato", category: "Other Italian Terms")
        let t83 = Term(text: "Primo", category: "Other Italian Terms")
        let t84 = Term(text: "Secondo", category: "Other Italian Terms")
        let t85 = Term(text: "Sopra", category: "Other Italian Terms")
        
        let t86 = Term(text: "Tacet", category: "Other Italian Terms")
        let t87 = Term(text: "Tutti", category: "Other Italian Terms")
        let t88 = Term(text: "Tre Corde", category: "Other Italian Terms")
        let t89 = Term(text: "Una Corda", category: "Other Italian Terms")
        
        let t90 = Term(text: "Volti Subito", category: "Other Italian Terms")

        
        t70.definition = "for stringed instruments: play with the bow"
        t71.definition = "do not pause between sections or movements"
        t72.definition = "with pedal"
        t73.definition = "played with a mute"
        
        t74.definition = "from the beginning"
        t75.definition = "repeat from the beginning and end at Fine"
        t76.definition = "from the sign %"
        t77.definition = "end, close"
        
        t78.definition = "return to the written register"
        t79.definition = "right hand"
        t80.definition = "left hand"
        t81.definition = "play an octave higher"
        
        t82.definition = "for stringed instruments: pluck with fingers"
        t83.definition = "first; the upper part of a duet"
        t84.definition = "second; the lower part of a duet"
        t85.definition = "above"
        
        t86.definition = "silence (for orchestral parts)"
        t87.definition = "for the whole ensemble"
        t88.definition = "three strings; indication in piano music to stop using the soft pedal"
        t89.definition = "one string; indication in piano music to use the left pedal"
        
        t90.definition = "turn the page quickly"
        
        
        table+=[t70, t71, t72, t73, t74, t75, t76, t77]
        table+=[t78, t79, t80, t81, t82, t83, t84, t85]
        table+=[t86, t87, t88, t89, t90]
        
        let t91 = Term(text: "Alla, all'", category: "Conjunction Word")
        let t92 = Term(text: "Assai", category: "Conjunction Word")
        let t93 = Term(text: "Ben, bene", category: "Conjunction Word")
        let t94 = Term(text: "Col, coll', colla, colle", category: "Conjunction Word")
        
        t91.definition = "in the style of"
        t92.definition = "very"
        t93.definition = "well"
        t94.definition = "with the"
        
        table+=[t91, t92, t93, t94]
        
        //CONJUNCTION WORDS
        
        
        //ASSIGNING TYPE TO EACH WORD
        
        //Assigning type to tempoRelated terms
        for i in 22...33 {
            table[i].type = "tempoRelated"
        }
        //Assigning type to other terms
        for i in 0...21 {
            if table[i].category == "Dynamics" {
                table[i].type = "dynamics"
            }
            else {
                table[i].type = "tempo"
            }
        }
        for i in 34..<table.count {
            switch table[i].category {
            case "Style": table[i].type = "style"
            case "Other Italian Terms": table[i].type = "italian"
            case "Conjunction Word": table[i].type = "conjunction"
                //Unfinished cases, add when rest of terms have been added
            default: table[i].type = ""
            }
        }
        
        print("table loaded")

    }
}
