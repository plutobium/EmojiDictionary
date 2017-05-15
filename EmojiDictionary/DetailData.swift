//import Alamofire

class DetailData {
    
    // defaults
    var id = ""
    var htmldata = ""
    var originalUrl = ""
    var selector = ""
    var name = ""
    var description = ""
    var keywords = ""
    
    // create obbject from id and load data from the wweb
    init(id:String) {
        
        /*
        Alamofire.request("https://webvariable.net/get/" + id).responseString { response in
            print("Success: \(response.result.isSuccess)")
            print("Response String: \(response.result.value)")
        }
        */
        
        self.id = id
        self.name = "Price of an Apple Monitor"
        self.originalUrl = "http://www.apple.com/"
        self.htmldata = "<div>Test Data</div>"
        self.selector = "body > div#troll2"
        
    }
    
}

/*
 
 
 
 
 
 
*/
