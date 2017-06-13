//
//  ViewController.swift
//  Fizz Buzz
//
//  Created by Aum Pasawala on 6/7/17.
//  Copyright © 2017 Aum Pasawala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myNumberLabel: UILabel!
    @IBOutlet var longPress: UILongPressGestureRecognizer!
    var number = 0

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        myNumberLabel.text = "\(number)"
    }

    @IBAction func screenTapped(_ sender: UITapGestureRecognizer)
    {
        print("screen tapped")
        number += 1
        if number % 15 == 0
        {
            view.backgroundColor = UIColor.yellow
            myNumberLabel.text = "FIZZ BUZZ"
            myNumberLabel.font = myNumberLabel.font.withSize(67)

        }
        else if number % 3 == 0
        {
            print("FIZZ")
            view.backgroundColor = UIColor.blue
            myNumberLabel.text = "FIZZ"
        }
        

            
            else if number % 5 == 0
    
            {
                print("BUZZ")
                view.backgroundColor = UIColor.red
                myNumberLabel.text = "BUZZ"

            }
        else
        {
        myNumberLabel.text = "\(number)"
        view.backgroundColor = UIColor.black
        myNumberLabel.font = myNumberLabel.font.withSize(100)
        }

    }




}
