//
//  ViewController.swift
//  Counter
//
//  Created by Admin on 29.07.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var historyText: UITextView!
    @IBOutlet weak var goBackButton: UIButton!
    @IBOutlet weak var increaseButton: UIButton!
    @IBOutlet weak var decreaseButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterLabel.text = "\(counter)"
        historyText.text = "История изменений:"
    }
    private func timeAndDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH-mm-ss"
        let dateString = dateFormatter.string(from: Date.init())
        return dateString
    }
    @IBAction private func decreaseButtonTouch(_ sender: Any) {
        if counter > 0 {
                   counter -= 1
                   counterLabel.text = "\(counter)"
                   historyText.text = "\(timeAndDate()): значение изменено на -1 "
                   
               } else if  counter == 0 {
                   counter = 0
                   counterLabel.text = "\(counter)"
                   historyText.text = "\(timeAndDate()): попытка уменьшить значение счётчика ниже 0"
               }
    }
    @IBAction private func increaseButtonTouch(_ sender: Any) {
        counter += 1
        counterLabel.text = "\(counter)"
        historyText.text = "\(timeAndDate()): значение изменено на +1"
        
    }
    @IBAction private  func goBackButtonTouch(_ sender: Any) {
        counter = 0
        counterLabel.text = "\(counter)"
        historyText.text = "\(timeAndDate()): значение сброшено"
    }
    
}
    
