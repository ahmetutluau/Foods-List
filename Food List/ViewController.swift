//
//  ViewController.swift
//  Food List
//
//  Created by MAC on 21.07.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource,TableViewCellProtocol {
    
    @IBOutlet weak var tableView: UITableView!
    
    var foods = [Foods]()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let f1 = Foods(foodId: 1, foodName: "Ayran", foodImage: "ayran", foodPrice: 3.0)
        let f2 = Foods(foodId: 2, foodName: "Baklava", foodImage: "baklava", foodPrice: 5.0)
        let f3 = Foods(foodId: 3, foodName: "Fanta", foodImage: "fanta", foodPrice: 8.0)
        let f4 = Foods(foodId: 4, foodName: "Izgara Somon", foodImage: "izgarasomon", foodPrice: 30.0)
        let f5 = Foods(foodId: 5, foodName: "Izgara Tavuk", foodImage: "izgaratavuk", foodPrice: 25.0)
        let f6 = Foods(foodId: 6, foodName: "Kadayıf", foodImage: "kadayif", foodPrice: 10.0)
        let f7 = Foods(foodId: 7, foodName: "Kahve", foodImage: "kahve", foodPrice: 10.0)
        let f8 = Foods(foodId: 8, foodName: "Köfte", foodImage: "kofte", foodPrice: 30.0)
        let f9 = Foods(foodId: 9, foodName: "Lazanya", foodImage: "lazanya", foodPrice: 20.0)
        let f10 = Foods(foodId: 10, foodName: "Makarna", foodImage: "makarna", foodPrice: 15.0)
        let f11 = Foods(foodId: 11, foodName: "Pizza", foodImage: "pizza", foodPrice: 20.0)
        let f12 = Foods(foodId: 12, foodName: "Su", foodImage: "su", foodPrice: 2.0)
        let f13 = Foods(foodId: 13, foodName: "Sütlaç", foodImage: "sutlac", foodPrice: 10.0)
        let f14 = Foods(foodId: 14, foodName: "Tiramisu", foodImage: "tiramisu", foodPrice: 10.0)
        
        foods.append(f1)
        foods.append(f2)
        foods.append(f3)
        foods.append(f4)
        foods.append(f5)
        foods.append(f6)
        foods.append(f7)
        foods.append(f8)
        foods.append(f9)
        foods.append(f10)
        foods.append(f11)
        foods.append(f12)
        foods.append(f13)
        foods.append(f14)

    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        foods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let data = foods[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath) as! TableViewCell
        
        cell.labelFoodName.text = data.foodName
        cell.labelPrice.text = "\(data.foodPrice!)"
        cell.imageViewFood.image = UIImage(named: data.foodImage!)
        
        cell.cellProtocol = self
        cell.indexPath = indexPath
        
        return cell
    }
    
    func clickBtnOnCell(indexPath: IndexPath) {
        print("Food Name : \(foods[indexPath.row].foodName!) / Price : \(foods[indexPath.row].foodPrice!)")
    }

}

