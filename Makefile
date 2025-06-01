PROJECT = Live2DApp
SCHEME = Live2DApp
CONFIG = Debug
SYMROOT = build
APP_PATH = $(SYMROOT)/$(CONFIG)/$(PROJECT).app
APP_EXEC = $(APP_PATH)/Contents/MacOS/$(PROJECT)

.PHONY: all xcodeproj build run clean

all: build

xcodeproj:
	@echo "📦 Generating Xcode project with XcodeGen..."
	xcodegen

build: xcodeproj
	@echo "🔨 Building $(PROJECT)..."
	xcodebuild -project $(PROJECT).xcodeproj -scheme $(SCHEME) -configuration $(CONFIG) SYMROOT=$(SYMROOT)

run: build
	@echo "🚀 Running..."
	@$(APP_EXEC)

clean:
	@echo "🧹 Cleaning build artifacts..."
	rm -rf $(SYMROOT)
	rm -rf $(PROJECT).xcodeproj
