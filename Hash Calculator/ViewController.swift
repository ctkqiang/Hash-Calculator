/*
*  ViewController.swift
*  @Project: Hash Calculator
*  @Created: by John Melody on 28/05/2020.
*  Copyright © 2020 John Melody. All rights reserved.
*/


import UIKit
import CryptoKit
import Foundation

class ViewController: UIViewController {
    @IBOutlet weak var rawInput: UITextField!
    @IBOutlet weak var output: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.lineBreakMode = NSLineBreakMode.byWordWrapping
        output.lineBreakMode = .byWordWrapping
        output.numberOfLines = 0
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        let input: String = rawInput.text!
        let encoded = toBase64(word: input)
        output.resignFirstResponder()
        output.text = "\(encoded)dksdpsf47asdukjnfwelm$%^&^5wv4"
        print("Encoded: \(input)||dksdpsf47asdukjnfwelm$%^&^5wv4")
    }
    
    @IBAction func decalculate(_ sender: UIButton) {
        let input: String = rawInput.text!
        let decoded = fromBase64(word: input)
        output.resignFirstResponder()
        output.text = "\(decoded)adwe247vsck40jkl54@#$%^&^5wv4"
        print("Decoded: \(decoded)||adwe247vsck40jkl54@#$%^&^5wv4")
    }
    
    func toBase64(word: String) -> String {
        let base64Encoded = word.data(using: String.Encoding.utf8)!.base64EncodedString()
        return base64Encoded
    }
    
    func fromBase64(word: String) -> String {
        let base64Decoded = Data(base64Encoded: word)!
        let decodedString = String(data: base64Decoded, encoding: .utf8)!
        return decodedString
    }
}
