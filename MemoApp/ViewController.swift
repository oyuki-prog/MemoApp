//
//  ViewController.swift
//  MemoApp
//
//  Created by o.yuki on 2021/10/31.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        textView.delegate = self
        
        let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as! SceneDelegate
        textView.text = sceneDelegate.lastText
    }

    func textViewDidChange(_ textView: UITextView) {
        let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as! SceneDelegate
        
        sceneDelegate.lastText = textView.text
    }

    @IBAction func refreshButton(_ sender: Any) {
        let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as! SceneDelegate
        
        sceneDelegate.lastText = ""
        textView.text = ""
    }
}

