class Solution(object):
    def getAverages(self, nums, k):
        n = len(nums)
        averages = [-1] * n
        prefix = [0] * (n + 1)

        if k == 0:
            return nums
        if 2 * k + 1 > n:
            return averages

        for i in range(n):
            prefix[i + 1] = prefix[i] + nums[i]

        for i in range(k, n - k):
            left_bound = i - k
            right_bound = i + k
            subarray_sum = prefix[right_bound + 1] - prefix[left_bound]
            averages[i] = subarray_sum / (2 * k + 1)

        return averages