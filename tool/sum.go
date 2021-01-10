package tool

func Sum(nums []int) int {
	num := 0
	for i := 0; i < len(nums); i++ {
		num += nums[i]
	}
	return num
}
