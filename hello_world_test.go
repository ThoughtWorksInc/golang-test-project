package golang_test_project

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestThatFails(t *testing.T) {
	assert.True(t, false, "this should fail")
}

func TestThatPasses(t *testing.T) {
	assert.Equal(t, "Hello World", sayHello())
}
