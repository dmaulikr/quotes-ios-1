
import Foundation

class Author {
    var quotes: [Quote] = []
    var backgroundImage: String
    var name: String
    
    init(name: String, backgroundImage: String) {
        self.backgroundImage = backgroundImage
        self.name = name
    }
    
    func addNewQuote(newQuote: Quote) {
        self.quotes.append(newQuote)
    }
    
    func getQuote(quoteIndex: Int) -> Quote {
        return quotes[quoteIndex]
    }
}
