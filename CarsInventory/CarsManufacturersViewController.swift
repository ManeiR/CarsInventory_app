//
//  ViewController.swift
//  CarsInventory
//
//  Created by Akash New on 10/1/21.
//  Copyright © 2021 Manei. All rights reserved.
//

import UIKit

class CarsManufacturersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchManufacturers()
    }

    private func fetchManufacturers() {
        guard let url = URL(
            string: "https://api-aws-eu-qa-1.auto1-test.com/v1/car-types/manufacturer?page=0&pageSize=10&wa_key=coding-puzzle-client-449cc9d"
            ) else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data else { return }
            data
        }
        task.resume()
    }
}

