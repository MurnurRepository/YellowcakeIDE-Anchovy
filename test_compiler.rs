// Simple test to verify the Yellercake compiler works
use std::fs;

fn main() {
    println!("Testing Yellercake compiler...");
    
    // Test basic compilation
    let test_code = r#"
entity circle1 circle(radius: 50)
print "Hello, Yellercake!"
"#;
    
    println!("Test code:");
    println!("{}", test_code);
    println!("---");
    
    // Try to compile
    let mut lexer = yellowcake_ide::lexer::Lexer::new(test_code.to_string());
    match lexer.tokenize() {
        Ok(tokens) => {
            println!("Tokenization successful! Found {} tokens:", tokens.len());
            for (i, token) in tokens.iter().take(10).enumerate() {
                println!("  {}: {:?}", i, token);
            }
            if tokens.len() > 10 {
                println!("  ... and {} more", tokens.len() - 10);
            }
        }
        Err(e) => {
            println!("Tokenization failed: {}", e);
        }
    }
    
    println!("Test completed!");
}
