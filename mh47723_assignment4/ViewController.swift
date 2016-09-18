//
//  ViewController.swift
//  mh47723_assignment4
//
//  Created by Anonymous85 on 9/18/16.
//  Copyright © 2016 Minh-Tri Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //MARK: Properties
    @IBOutlet weak var textName: UITextField!
    @IBOutlet weak var textCity: UITextField!
    @IBOutlet weak var textListEntries: UITextView!
    @IBOutlet weak var imgCity: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Handle text field's user input through delegate callbacks
        textName.delegate = self //self refers to ViewController class
        textCity.delegate = self
        
        
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard
        textName.resignFirstResponder()
        textCity.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if(!(textName.text?.isEmpty)!){
            if(!(textCity.text?.isEmpty)!){
                textListEntries.text = "Name: " + textName.text! + ", City: " + textCity.text!
            }else{
                textListEntries.text = "Name: " + textName.text!
            }
        }else{
            if(!(textCity.text?.isEmpty)!){
                textListEntries.text = "City: " + textCity.text!
            }else{
                textListEntries.text = ""
            }
        }
    }
    
    //MARK: UIImagePickerControllerDelegate
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        //Dismiss Picker
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        // Info dictionary contains multiple representations of the image, and this uses the original
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        imgCity.image = selectedImage
        
        //Dismiss Picker
        dismiss(animated: true, completion: nil)
    }
    
    
    //MARK: Actions
    
    @IBAction func selectImgFromLibrary(_ sender: UITapGestureRecognizer) {
        //Hide the keyboard
        textName.resignFirstResponder()
        textCity.resignFirstResponder()
        
        //View Controller to pick from Photo Library
        let imagePickerController = UIImagePickerController()
        //Only allow photos to be picked, not taken
        imagePickerController.sourceType = .photoLibrary
        
        //Make sure ViewController is notified when user picks an image
        imagePickerController.delegate = self
        
        present(imagePickerController, animated: true, completion: nil)
    }
    @IBAction func buttonSave(_ sender: UIButton) {
    }
    @IBAction func enterName(_ sender: UITextField) {
        //After
    }
    @IBAction func enterCity(_ sender: UITextField) {
        
    }
}

