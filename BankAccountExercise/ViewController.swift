import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let account = Account()
        account.setBalance(balance: 999.999)
        print("Account with balance of \(account.getBalance()) has interest of \(String(format: "%.2f", account.getInterest()))%")
    
    }

}

