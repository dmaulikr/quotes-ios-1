
import Foundation

class QuotesManager {
    private var quotes: [Quote] = []
    private var currentQuote: Int!
    
    init() {
        self.generateDataset()
    }
    
    func getNextItem() -> (String, String, String) {
        currentQuote = Int(arc4random_uniform(UInt32(quotes.count)) + 1) - 1

        let authorName = getNextAuthorName()
        let quoteText = getNextQuote()
        let imageBackground = getAuthorBackgroundImage()
        
        return (authorName, quoteText, imageBackground)
    }
    
    private func getNextQuote() -> String {
        return quotes[currentQuote].text
    }
    
    private func getNextAuthorName() -> String {
        return quotes[currentQuote].author.name
    }
    
    private func getAuthorBackgroundImage() -> String {
        return quotes[currentQuote].author.backgroundImage
    }
    
    private func generateDataset() {
        createStephenCoveyQuotes()
        createTonyRobbinsQuotes()
        createTheodoreRooseveltQuotes()
        createBrendonBurchardQuotes()
        createSteveJobsQuotes()
        createAbrahamLincolnQuotes()
        createMartinLutherKingQuotes()
    }
    
    private func createBrendonBurchardQuotes() {
        let brendonBurchard = createAuthor(name: "Brendon Burchard", backgroundImage: "brendon_burchar_background")
        let brendonBurchardFirstQuote = createQuote(author: brendonBurchard, text: "\"No matter how small you start, start something that matters.\"")
        
        brendonBurchard.addNewQuote(newQuote: brendonBurchardFirstQuote)
        
        quotes.append(brendonBurchardFirstQuote)
    }
    
    private func createStephenCoveyQuotes() {
        let stephenCovey = createAuthor(name: "Stephen Covey", backgroundImage: "stephen_covey_background")
        let stephenCoveyfirstQuote = createQuote(author: stephenCovey, text: "\"The Key is not to Prioritize what's on your Schedule, but to Schedule your Priorities\"")
        
        stephenCovey.addNewQuote(newQuote: stephenCoveyfirstQuote)
        
        quotes.append(stephenCoveyfirstQuote)
    }
    
    private func createMartinLutherKingQuotes() {
        let martinLutherKing = createAuthor(name: "Matin Luther King", backgroundImage: "martin_luther_king_background")
        let martinLutherKingFirstQuote = createQuote(author: martinLutherKing, text: "\"Darkness cannot drive out darkness; only light can do that. Hate cannot drive out hate; only love can do that.\"")
        
        martinLutherKing.addNewQuote(newQuote: martinLutherKingFirstQuote)
        
        quotes.append(martinLutherKingFirstQuote)
    }
    
    private func createSteveJobsQuotes() {
        let steveJobs = createAuthor(name: "Steve Jobs", backgroundImage: "steve_jobs_background")
        let steveJobsFirstQuote = createQuote(author: steveJobs, text: "\"If you do something and it turns out pretty good, then you should go do something else wonderful, not dwell on it for too long. Just figure out what’s next.\"")
        
        steveJobs.addNewQuote(newQuote: steveJobsFirstQuote)
        
        quotes.append(steveJobsFirstQuote)
    }
    
    private func createTonyRobbinsQuotes() {
        let tonyRobbins = createAuthor(name: "Tony Robbins", backgroundImage: "tony_robbins_background")
        let tonyRobbinsFirstQuote = createQuote(author: tonyRobbins, text: "\"The truth is that we can learn to condition our minds, bodies, and emotions to link pain or pleasure to whatever we choose. By changing what we link pain and pleasure to, we will instantly change our behaviors.\"")
        
        tonyRobbins.addNewQuote(newQuote: tonyRobbinsFirstQuote)
        
        quotes.append(tonyRobbinsFirstQuote)
    }
    
    private func createAbrahamLincolnQuotes() {
        let abrahamLincoln = createAuthor(name: "Abraham Lincoln", backgroundImage: "abraham_lincoln_background")
        let abrahamLincolnFirstQuote = createQuote(author: abrahamLincoln, text: "\"Character is like a tree and reputation like a shadow. The shadow is what we think of it; the tree is the real thing.\"")
        
        abrahamLincoln.addNewQuote(newQuote: abrahamLincolnFirstQuote)
        
        quotes.append(abrahamLincolnFirstQuote)
    }
    
    private func createTheodoreRooseveltQuotes() {
        let theodoreRoosevelt = createAuthor(name: "Theodore Roosevelt", backgroundImage: "theodore_roosevelt_background")
        let theodoreRooseveltFirstQuote = createQuote(author: theodoreRoosevelt, text: "\"The best executive is one who has sense enough to pick good people to do what he wants done, and self-restraint enough to keep from meddling with them while they do it.\"")
        
        theodoreRoosevelt.addNewQuote(newQuote: theodoreRooseveltFirstQuote)
        
        quotes.append(theodoreRooseveltFirstQuote)
    }
    
    private func createQuote(author: Author, text: String) -> Quote {
        return Quote(author: author, text: text)
    }
    
    private func createAuthor(name: String, backgroundImage: String) -> Author {
        return Author(name: name, backgroundImage: backgroundImage)
    }
    
    
}
