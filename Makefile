.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: pre-commit
pre-commit: ## Run pre-commit run -a
	pre-commit run -a

.PHONY: helm-docs
helm-docs: ## Run helm-docs
	@hack/helm-docs.sh

.PHONY: update-readme
update-readme: ## Update readme using gomplate
	@hack/update-readme.sh
