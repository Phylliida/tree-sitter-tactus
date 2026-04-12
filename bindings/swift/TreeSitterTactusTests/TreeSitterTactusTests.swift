import XCTest
import SwiftTreeSitter
import TreeSitterTactus

final class TreeSitterTactusTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_tactus())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Tactus grammar")
    }
}
