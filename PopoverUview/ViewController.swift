//
//  ViewController.swift
//  PopoverUview
//
//  Created by khacviet on 11/17/16.
//  Copyright © 2016 khacviet. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate
{
    
    @IBOutlet weak var lbl_Like: UILabel!
    
    @IBOutlet weak var btn_Like: UIButton!
    
    @IBOutlet weak var lbl_OldComment: UITextView!
    
    @IBOutlet weak var lbl_NewComment: UITextView!
    
    
    var oldComments = ["Đẹp train thế <3 ", "Đúng rồi. Quan tâm tụi vớ vẩn làm gì anh ơi ", "Tông môn mày tinh vi "]
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for oldComment in oldComments
        {
            lbl_OldComment.text! += oldComment + "\n"
        }
        lbl_OldComment.editable = false
    }
    
    @IBAction func action_Post(sender: AnyObject)
    {
        if checkComment() == true
        {
            oldComments = oldComments + [lbl_NewComment.text!]
            lbl_OldComment.text! += lbl_NewComment.text! + "\n"
            lbl_NewComment.text = ""
        }
        print(oldComments)
    }
    
    func checkComment() -> Bool
    {
        if lbl_NewComment.text! == ""
        {
            return false
        }
        else
        {
            return true
        }
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if (segue.identifier == "showPopViewer")
        {
            let controller = segue.destinationViewController
            controller.popoverPresentationController?.delegate = self
            controller.preferredContentSize = CGSize(width: 240, height: 30)
        }
    }
    
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle
    {
        return .None
    }
    
    
}