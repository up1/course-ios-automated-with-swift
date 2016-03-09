
import Foundation
import UIKit

class NewQuoteViewController: UIViewController, NewQuoteViewModelDelegate {
    
    @IBOutlet weak var contentTextField: UITextField!
    var previousViewController = QuoteListViewController()
    
    var viewModel: NewQuoteViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.contentTextField.text = viewModel.content
    }
    
    @IBAction func cancelButton(sender: AnyObject) {
        dismissAddView()
    }
    
    
    @IBAction func saveTapped(sender: AnyObject) {
        viewModel.content = contentTextField.text!
        viewModel.saveNewQuote()
    }
    
    func dismissAddView() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func showInvalidContent() {
        let alert = UIAlertController(
            title: "Oops!",
            message:"Please enter your quote", preferredStyle: .Alert)
        
        let action = UIAlertAction(title: "OK", style: .Default) { _ in
            self.contentTextField.becomeFirstResponder()
        }
        alert.addAction(action)
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    
    
}
