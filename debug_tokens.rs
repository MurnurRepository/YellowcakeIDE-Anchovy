use yellowcake_ide::lexer::Lexer;
use yellowcake_ide::ast::TokenType;

fn main() {
    let input = "insertentity(window)-xy(5, 6)-dimensions(50x50)";
    let mut lexer = Lexer::new(input);
    
    match lexer.tokenize() {
        Ok(tokens) => {
            println!("Tokens for: {}", input);
            for (i, token) in tokens.iter().enumerate() {
                println!("  {}: {:?} -> '{}'", i, token.token_type, token.lexeme);
            }
        }
        Err(e) => {
            println!("Lexer error: {}", e);
        }
    }
}
