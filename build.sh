#!/bin/bash

# YellowcakeIDE Universal Build Script
# Builds for all platforms and package formats

echo "🚀 Building YellowcakeIDE for all platforms..."

# Install required tools
echo "📦 Installing packaging tools..."
cargo install cargo-bundle cargo-deb cargo-arch cargo-appimage cargo-wix trunk
rustup target add wasm32-unknown-unknown

# Windows .exe
echo "🪟 Building Windows .exe..."
cargo build --release --target x86_64-pc-windows-gnu

# macOS .app
echo "🍎 Building macOS .app..."
cargo build --release --target x86_64-apple-darwin
cargo bundle --target x86_64-apple-darwin

# Linux .deb
echo "🐧 Building Linux .deb..."
cargo build --release
cargo deb

# Linux .AppImage
echo "📦 Building Linux .AppImage..."
cargo appimage

# Web .html
echo "🌐 Building Web .html..."
trunk build

echo "✅ Build complete! Check the following directories:"
echo "   Windows: target/x86_64-pc-windows-gnu/release/yellowcake-ide.exe"
echo "   macOS:   target/x86_64-apple-darwin/release/bundle/macos/YellowcakeIDE.app"
echo "   Debian:  target/debian/yellowcake-ide_0.1.0_amd64.deb"
echo "   AppImage: target/appimage/YellowcakeIDE-0.1.0.AppImage"
echo "   Web:     dist/index.html"
