# YellowcakeIDE - Anchovy Edition

A Frutiger Aero styled IDE built in Rust using egui, supporting multiple programming languages including the custom Yellowcake language.

## Features

- **Multi-language Support**: Java, Rust, Ruby, PHP, HTML, CSS, TypeScript, JavaScript, C++, C, C#, Go, SQL, Python, JSON, Julia, Lua, Luau, and Yellowcake
- **Frutiger Aero Theme**: Glossy translucent textures with the iconic 2005-2012 aesthetic
- **Source Sans Font**: Clean, readable typography
- **File Explorer**: Project navigation with file type icons
- **Syntax Highlighting**: Color-coded syntax for all supported languages

## Supported Languages

- 🦀 Rust
- ☕ Java  
- 💎 Ruby
- 🐘 PHP
- 📜 JavaScript
- 📘 TypeScript
- ⚙️ C/C++
- 🔷 C#
- 🐹 Go
- 🌐 HTML
- 🎨 CSS
- 🗃️ SQL
- 🐍 Python
- 📋 JSON
- 📊 Julia
- 🌙 Lua
- 🎮 Luau
- ☢️ Yellowcake (custom language)

## Installation

1. Install Rust (latest stable)
2. Clone this repository
3. Run `cargo build --release`
4. Execute with `cargo run`

## Usage

- **File → New File**: Create a new file
- **File → Open File**: Open existing files
- **File → Save**: Save current file
- **View → File Explorer**: Toggle file browser
- **Theme → Frutiger Aero**: Apply the classic theme

## Architecture

- `src/main.rs` - Application entry point and main window
- `src/theme.rs` - Frutiger Aero styling and visual effects
- `src/editor.rs` - Text editor component
- `src/syntax.rs` - Syntax highlighting engine
- `src/file_explorer.rs` - Project file browser

## Yellowcake Language

The custom Yellowcake language (`.yc` extension) is designed for nuclear computing applications with syntax inspired by Rust and functional programming concepts.

## License

MIT License - see LICENSE file for details
