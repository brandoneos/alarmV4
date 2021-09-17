//
//  addAlarm.swift
//  addAlarm
//
//  Created by Brandon Kim on 8/31/21.
//

import UIKit
var springGreen = UIColor(red: 108/255, green: 255/255, blue: 180/255, alpha: 1)
var numbers:[Int] = [1,2,3,4,5,6,7,8,9,14,0,13]

class AddAlarm: UIViewController {
    
    
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyboard.instantiateViewController(identifier: "ViewController")
        var secondVCVC:ViewController = segue.destination as! ViewController
        
        secondVC.modalPresentationStyle = .fullScreen
        
        secondVC.modalTransitionStyle = .flipHorizontal
        
        present(secondVC, animated: true, completion: nil)
    }
    @IBAction func savePressed(_ sender: Any) {
        
       
//                present(secondVC, animated: true, completion: nil)
    }
    
    @IBAction func cancelPressed(_ sender: Any) {
    }
    
    
    
    
    
    

}
extension UIViewController: UICollectionViewDataSource {
    
    
    
    public func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numbers.count
        
    }
    
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
       
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ccell", for: indexPath) as! NumberCollectionCell
            var dude = numbers[indexPath.row]
        if (dude == 13) {
            cell.numberButton.setTitle("", for: .normal)
            var image = UIImage(named: "deleteIcon")
            
            cell.numberButton.setImage(UIImage(systemName: "delete.left"), for: .normal)
            cell.numberButton.tintColor = springGreen
        } else if (dude == 14 ) {
            
            cell.numberButton.setTitle("", for: .normal)
            cell.numberButton.backgroundColor = .white
            cell.numberButton.tintColor = springGreen
        } else {
            cell.numberButton.setTitle("\(dude)", for: .normal)
            cell.numberButton.tintColor = springGreen
        }
            
            return cell
        
        
        
        
        
    }
}





