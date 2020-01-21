//
//  ViewController.swift
//  nsattributedtext
//
//  Created by Antonio Adrian Chavez on 5/17/19.
//  Copyright © 2019 Antonio Adrian Chavez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // -- The chapter --
    
    // Chapter 1
    @IBOutlet weak var chapterlabel: UILabel!
    
    
    // -- The coding conecpt --
    
    // Coding Label 1
    @IBOutlet weak var codinglabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let sfMonoDescriptor = UIFont.systemFont(ofSize: 15).fontDescriptor.withDesign(.monospaced)
                     let sfMonoFont = UIFont(descriptor: sfMonoDescriptor!, size: 15)
        codinglabel.font = sfMonoFont
                   
        
        // -- The chapter --
        
        // Chapter 1
        
        chapterlabel.text = "The printing is a tools to display output text directly to the console."
        
        // -- The coding conecpt --
        
        // Coding Label 1
        
        codinglabel.text = "print(\"Hello World\")"
        
        
        // --- nsattributedtext ---
        
        let attributedChapter = NSMutableAttributedString(string: chapterlabel.text!)
        
        let attributedCoding = NSMutableAttributedString(string: codinglabel.text!)
        
        
        
        // -- The chapter --
        
        // Chapter 1
        
        let oneChapter = (chapterlabel.text! as NSString).range(of: "The printing is a tools to display output text directly to the console.")
            attributedChapter.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.gray , range: oneChapter)
            
            chapterlabel.attributedText = attributedChapter
        
        // -- The coding conecpt --
        
        // Coding label 1
        
        let oneCodeconecpt = (codinglabel.text! as NSString).range(of: "print")
        attributedCoding.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.cyan , range: oneCodeconecpt)
        
        let oneCodeconecptTwo = (codinglabel.text! as NSString).range(of: "\"Hello World\"")
        attributedCoding.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red , range: oneCodeconecptTwo)
        
        codinglabel.attributedText = attributedCoding
        
        
    }
    
    
}
