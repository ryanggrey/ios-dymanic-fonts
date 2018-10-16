import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var customFontLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateCustomFontLabel()
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(updateCustomFontLabel),
            name: UIContentSizeCategory.didChangeNotification,
            object: nil
        )
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc private func updateCustomFontLabel() {
        customFontLabel.font = genericResizableFont()
    }

    private func genericResizableFont() -> UIFont {
        let categoryLargeSize: CGFloat = 17
        let fontName = UIAccessibility.isBoldTextEnabled ? "Rockwell-Bold" : "Rockwell"
        guard let customFont = UIFont(name: fontName, size: categoryLargeSize) else {
            return UIFont.systemFont(ofSize: categoryLargeSize);
        }
        
        return UIFontMetrics.default.scaledFont(for: customFont)
    }
}

