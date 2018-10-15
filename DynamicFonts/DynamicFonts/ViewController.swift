import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var customFontLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customFontLabel.font = genericResizableFont()
    }

    private func genericResizableFont() -> UIFont {
        let categoryLargeSize: CGFloat = 17
        guard let customFont = UIFont(name: "Rockwell", size: categoryLargeSize) else {
            return UIFont.systemFont(ofSize: categoryLargeSize);
        }
        
        return UIFontMetrics.default.scaledFont(for: customFont)
    }
}

