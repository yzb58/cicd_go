package test

import (
	"CICD_GO_test/tool"
	"testing"
)

func TestEcho(t *testing.T) {
	nums := []int{3, 5, 2, 8, 2}
	sum := tool.Sum(nums)
	if sum != 20 {
		t.Errorf("result is %v, but your result is %v", 20, sum)
	}
}
