//
//  ViewController.swift
//  MySobrero
//
//  Created by Ettore Luigi Pane on 29/11/2019.
//  
//

import UIKit



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userid = "x"
        let passwd = "x"
        guard let url = URL(string: "http://reapistaging.altervista.org/api.php?uname=\(userid)&password=\(passwd)") else {return}
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        guard let dataResponse = data,
                  error == nil else {
                  print(error?.localizedDescription ?? "Response Error")
                  return }
            do{
                //here dataResponse received from a network request
                let jsonResponse = try JSONSerialization.jsonObject(with:
                                       dataResponse, options: [])
                print(jsonResponse) //Response result
             } catch let parsingError {
                print("Error", parsingError)
           }
        }
        task.resume()
        
        
    }
}

