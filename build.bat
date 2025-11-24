@echo off
REM YellowcakeIDE Windows Build Script

echo 🚀 Building YellowcakeIDE for all platforms...

REM Install required tools
echo 📦 Installing packaging tools...
cargo install cargo-bundle cargo-deb cargo-arch cargo-appimage cargo-wix trunk
rustup target add wasm32-unknown-unknown

REM Windows .exe
echo 🪟 Building Windows .exe...
cargo build --release

REM Windows installer
echo 📦 Building Windows installer...
cargo wix

REM Linux .deb (cross-compilation)
echo 🐧 Building Linux .deb...
cargo install cross
cross build --release --target x86_64-unknown-linux-gnu
cross deb --target x86_64-unknown-linux-gnu

REM Web .html
echo 🌐 Building Web .html...
trunk build

echo ✅ Build complete!
echo    Windows EXE: target/release/yellowcake-ide.exe
echo    Windows MSI:  target/wix/yellowcake-ide.msi
echo    Linux DEB:   target/x86_64-unknown-linux-gnu/debian/yellowcake-ide_0.1.0_amd64.deb
echo    Web:         dist/index.html
pause
