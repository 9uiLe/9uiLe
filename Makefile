.PHONY: format format-check install clean help

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

install: ## Install dependencies
	npm install

format: ## Format all files
	npm run format

format-check: ## Check formatting (for CI)
	npm run format:check

clean: ## Remove node_modules
	rm -rf node_modules
