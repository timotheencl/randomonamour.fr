.DEFAULT_GOAL := help

HUGO := hugo
PUBLIC_DIR := public/
RESOURCES_DIR := resources/

.PHONY: watch
watch:         ## Build and watch for changed files
	$(HUGO) server --watch --buildDrafts -d $(PUBLIC_DIR)

.PHONY: clean
clean:         ## Clean generated files
	rm -rf $(PUBLIC_DIR) $(RESOURCES_DIR)

help:          ## Show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
