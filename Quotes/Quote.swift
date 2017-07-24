
import Foundation

class Quote {
    var author: Author
    var text: String
    
    init(author: Author, text: String) {
        self.author = author
        self.text = text
    }
}
