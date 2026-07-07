.PHONY: all build dev install-deps clean

# Default target
all: build

# Build the macOS application bundle (.app)
build: install-deps
	pnpm tauri build

# Run the application in development mode
dev: install-deps
	pnpm tauri dev

# Install npm/tauri dependencies
install-deps:
	pnpm install

# Clean build artifacts
clean:
	pnpm tauri clean || true
	cargo clean
