# How to create a nsattributedtext in Swift
How to get any colors in the one string. 

The nsattributedtext are requested to use UILabel. 

![Simulator Screen Shot - iPhone Xʀ - 2019-05-17 at 14 54 08](https://user-images.githubusercontent.com/32586236/57952723-a6893600-78b3-11e9-83b4-cab4c9e753d1.png)


The best example of nsattributedtext. 

I did make my own example of the group. 

The chapter means it could to use a sentence or any kind of things as you want to use it. 

The coding concepts mean it could to use a highlight in the text like code text theme

Noticed:  This is the chapter, and coding concepts are both the same to use UILabel but This chapter is full highlight 
text and these coding concepts are multi-color in one UILabel.

## lets start!

This is an example of what I did coding it. 

## First Course

    // -- The chapter --
    
    // Chapter 1
    @IBOutlet weak var chapterlabel: UILabel!
    
    
    // -- The coding conecpt --
    
    // Coding Label 1
    @IBOutlet weak var codinglabel: UILabel!
    
    
This is where you did put a UILabel in the Storyboard that you have to connect to code in the assistant editor area. 
(You will see two circle icons at the top of the utility area.)  

## Second Course

        // -- The chapter --
        
        // Chapter 1
        
        chapterlabel.text = "The printing is a tool to display output text directly to the console."
        
        
        // -- The coding conecpt --
        
        // Coding Label 1
        
        codinglabel.text = "print(\"Hello World\")"
        
Why does this have a \ in the string? 

You will NOT write twice quotes.

That will not have appeared to display that \ because that \ is a for quotes inside of the string
then you will see quotes in the UILabel in the iOS Simulator.         
        
noticed: This creates your own sentence, then it will make to replacement that UILabel to your own sentence.   

You will not need to use texting that UILabel in the storyboard if you use this nsattributedtext in the editor area.

noticed: remember that you learn from this first course. 

For example

        // Coding Label 1
        
        codinglabel.text = "print(\"Hello World\")"
        
This 'codinglabel' is where I did create a UILabel in the storyboard that connected to the editor area to make my own
name value.

that text means The current text that is displayed by the label.

You can make your own texting in the string. 


## Third Course


        // --- nsattributedtext ---
        
        let attributedChapter = NSMutableAttributedString(string: chapterlabel.text!)
        
        let attributedCoding = NSMutableAttributedString(string: codinglabel.text!)


You can make new name value for the create new value. 

This 'NSMutableAttributedString' means A mutable string object that also contains attributes (such as visual style, 
hyperlinks, or accessibility data) associated with various portions of its text content. 

This 'chapterlabel.text' and 'codinglabel.text' was the same as the second course that you learned. 

## Fourth Course

A final code. 

This is kinda long to code it, but it was a final to customize a highlight in the text.

        // -- The chapter --
        
        // Chapter 1
        
        let oneChapter = (chapterlabel.text! as NSString).range(of: "The printing is a tool to display output text directly to the console.")
            attributedChapter.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.gray , range: oneChapter)
            
            chapterlabel.attributedText = attributedChapter
        
        // -- The coding conecpt --
        
        // Coding label 1
        
        let oneCodeconecpt = (codinglabel.text! as NSString).range(of: "print")
        attributedCoding.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.cyan , range: oneCodeconecpt)
        
        let oneCodeconecptTwo = (codinglabel.text! as NSString).range(of: "\"Hello World\"")
        attributedCoding.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red , range: oneCodeconecptTwo)
        
        codinglabel.attributedText = attributedCoding

Now you have made new name value for the new value. 

If you want to make code theme like you want to put that red in the two quotes with the sentence.
You will have to write this "\"Hello World\"". 

That you did learn from the Second Course.

This 'range(of: "print")' that where you want to choose a word from  Second Course 
where you create your own texting that will have the only word to get highlight text. 

This 'NSString' means A static, plain-text Unicode string object that bridges to String; use NSString when you need a reference
semantics or other Foundation-specific behavior.

These 'addAttribute' means Adds an attribute with the given name and value to the characters in the specified range.

This 'Key' means Attributes that you can apply to text in an attributed string.

This 'foregroundColor' means The value of this attribute is a UIColor object. Use this attribute to specify the color of the text during rendering. If you do not specify this attribute, the text is rendered in black.

Now you can make your own color for a highlight in the text! 

          value: UIColor._______
          
You will see those list of the UIColor have it. 

1. clear
2. black
3. white
4. brown
5. blue
6. cyan (light green)
7. green 
8. darkgreen 
9. light grey 
10. gery
11. darkgrey
12. yellow
13. red
14. purple
15. orange
16. magenta

You will see this 'range' that where you created your own new name value in this constant statements to put 
in this 'addAttribute()'.

# It was completed! 

Noticed: You can add more chapter/code concept in one viewcontroller.swift. You have to make sure those name values have NO exist
* that means you can NOT make name value that existed in anywhere like this below of an example 

          var chapterlabel: UILabel!

          var chapterlabel: UILabel!
 
This will cause red errors: "Invalid redeclaration of 'chapterlabel'" because one of the name-value has existed. 
Make sure there are no exits then you can make your own new name value.

I hope this is more helpful. :) 

I hope you have great enjoyed coding! 
