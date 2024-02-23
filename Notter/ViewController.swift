//
//  ViewController.swift
//  Notter
//
//  Created by Göktuğ KARANLIK on 23.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Eğer varsa kayıtlı notu yükle
        if let savedNote = UserDefaults.standard.string(forKey: "savedNote") {
            textView.text = savedNote
        }
        
        
    }
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        // Notu kaydet
        UserDefaults.standard.set(textView.text, forKey: "savedNote")
                showAlert(message: "Not kaydedildi.")
            }
            
            func showAlert(message: String) {
                let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Tamam", style: .default, handler: nil))
                present(alert, animated: true, completion: nil)
    }
    
    
}
