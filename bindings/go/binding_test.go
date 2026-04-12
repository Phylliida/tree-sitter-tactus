package tree_sitter_tactus_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_tactus "github.com/tree-sitter-tactus/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_tactus.Language())
	if language == nil {
		t.Errorf("Error loading Tactus grammar")
	}
}
