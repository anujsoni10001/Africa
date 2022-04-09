//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Anuj Soni on 06/04/22.
//

import Foundation

extension Bundle{

func decode<T: Codable>(_ file:String) -> T{
// 1.Locate the json file
guard let url = self.url(forResource:file, withExtension: nil) else {
fatalError("Failed To Locate \(file) in bundle.")
}
// 2. Create the Property for data
guard let data = try? Data(contentsOf: url) else {
fatalError("Failed to Locate data from \(file) in bundle.")
}
// 3. crete decoder
let decoder = JSONDecoder()
// 4. create property for the decoded data
guard let loaded = try? decoder.decode(T.self, from: data) else {
fatalError("Failed to return data from \(file) in bundle.")
}
//  return data
return loaded
}
}

