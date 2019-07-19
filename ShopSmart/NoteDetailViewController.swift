//
//  NoteDetailViewController.swift
//  ShopSmart
//
//  Created by user on 7/19/19.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

class NoteDetailViewController: UIViewController {

    static var note22: Note!
    
    
    @IBOutlet weak var titleTextField: UITextField!
    
    
    @IBOutlet weak var contentTextField: UITextView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        titleTextField.text = NoteDetailViewController.note22.title
        contentTextField.text = NoteDetailViewController.note22.content
        
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if (titleTextField.text?.isEmpty)!{
            titleTextField.text = "Untitled List"
        }
        NoteDetailViewController.note22.title = titleTextField.text!
        NoteDetailViewController.note22.content = contentTextField.text!
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
