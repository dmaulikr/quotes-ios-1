
import UIKit

class QuoteViewController : UIViewController {
    
    @IBOutlet weak var backgroundAuthorImage: UIImageView!
    @IBOutlet weak var quoteTextLabel: UILabel!
    @IBOutlet weak var authorNameLabel: UILabel!
    @IBOutlet weak var inspireMeButton: UIButton!
    
    let quoteManager: QuotesManager = QuotesManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setInspireMeCorners()
        
        setUI()
    }
    
    @IBAction func inpireMeButtonClick(_ sender: Any) {
        setUI()
    }
    
    func setUI() {
        let (authorName, quoteText, authorBackgroundImage) = quoteManager.getNextItem()

        setAuthorBackgroundImage(backgroundImage: authorBackgroundImage)
        setAuthorName(authorName: authorName)
        setQuoteText(quoteText: quoteText)
    }

    func setAuthorName(authorName: String) {
        authorNameLabel.text = authorName
    }
    
    func setQuoteText(quoteText: String) {
        quoteTextLabel.text = quoteText
    }
    
    func setAuthorBackgroundImage(backgroundImage: String) {
        backgroundAuthorImage.image = UIImage(named: backgroundImage)
    }
    
    func setInspireMeCorners() {
        inspireMeButton.layer.cornerRadius = 23
    }
}
