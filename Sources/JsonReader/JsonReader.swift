import Foundation

/**
 JSON reader tool
 */
class JsonReader {

    /**
     Reads the JSON file
     - Parameters:
       - type: the type of file
       - path: the path of file
     - Returns: data content
     - Throws: reading error
     */
    static func read<T>(_ type: T.Type, fromFile path: String) throws -> T where T: Decodable {
        let rawString = try String(contentsOfFile: path, encoding: .utf8)
        let data = rawString.data(using: .utf8)
        return try JSONDecoder().decode(type, from: data!)
    }

}

