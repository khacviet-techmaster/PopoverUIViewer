//
//  PopoverViewController.swift
//  PopoverUview
//
//  Created by khacviet on 11/18/16.
//  Copyright © 2016 khacviet. All rights reserved.
//

import UIKit

class PopoverViewController: UIViewController {
    
    
    @IBAction func action_Like(sender: AnyObject)
    {
        if sender.tag == 100
        {
            print("Like")
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    @IBAction func action_Love(sender: AnyObject)
    {
        if sender.tag == 101
        {
            print("Love")
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    @IBAction func action_Haha(sender: AnyObject)
    {
        if sender.tag == 102
        {
            print("Haha")
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    @IBAction func action_Sad(sender: AnyObject)
    {
        if sender.tag == 103
        {
            print("Sad")
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    @IBAction func action_Wow(sender: AnyObject)
    {
        if sender.tag == 104
        {
            print("Wow")
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    @IBAction func action_Angry(sender: AnyObject)
    {
        if sender.tag == 105
        {
            print("Angry")
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
}