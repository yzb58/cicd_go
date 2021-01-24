package main

import (
	"CICD_GO_test/tool"
	"fmt"
)

func main() {
	tool.Echo("hello world")
	nums := make([]int, 0)
	nums = append(nums, 1, 3, 5, 8, 9)
	num := tool.Sum(nums)
	fmt.Println(num)
}
