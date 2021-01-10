package main

import (
	"CICD_GO_test/tool"
	"fmt"
)

func main() {
	tool.Echo("hello world")
	nums := make([]int, 0)
	nums[0] = 1
	nums[1] = 3
	nums[2] = 5
	nums[3] = 8
	nums[4] = 9
	num := tool.Sum(nums)
	fmt.Println(num)
}
