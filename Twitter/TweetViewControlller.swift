//
//  TweetViewControlller.swift
//  Twitter
//
//  Created by Xavier Loera Flores on 9/24/20.
//  Copyright © 2020 Dan. All rights reserved.
//

import UIKit

class TweetViewControlller: UIViewController {

    @IBAction func Tweet(_ sender: Any) {
        if(!TweetTextView.text.isEmpty){
            TwitterAPICaller.client?.postTweet(tweetString: TweetTextView.text, success: {
                self.dismiss(animated: true, completion: nil)
            }, failure: { (error) in
                print("Error Posting Tweet")
            })
        } else{
            self.dismiss(animated: true, completion: nil)
        }
        
    }
    
    @IBOutlet weak var TweetTextView: UITextView!
    
    @IBAction func Cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TweetTextView.becomeFirstResponder()

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
