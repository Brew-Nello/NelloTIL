import Foundation

let config = URLSessionConfiguration.default

let session = URLSession(configuration: config)

let url = URL(string: "https://api.github.com/search/repositories?q=rxSwift&page=1")!

let task = session.dataTask(with: url) { data, response, error in
    guard let httpResponse = response as? HTTPURLResponse,
          (200..<300).contains(httpResponse.statusCode) else {
        print("--> reponse \(response)")
        return
    }
    
    guard let data = data else { return }
    let result = String(data: data, encoding: .utf8)
}
task.resume()
