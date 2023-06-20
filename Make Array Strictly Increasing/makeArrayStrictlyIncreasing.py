from bisect import bisect_right


class Solution:
    def makeArrayIncreasing(self, arr1, arr2):
        arr2.sort()  # Sort arr2 in ascending order
        dp = {}  # Initialize memory

        def dfs(i, prev):
            if (i, prev) in dp:
                return dp[(i, prev)]

            if i == len(arr1):
                return 0

            cost = float('inf')

            if arr1[i] > prev:
                cost = dfs(i + 1, arr1[i])

            index = bisect_right(arr2, prev)
            if index < len(arr2):
                cost = min(cost, 1 + dfs(i + 1, arr2[index]))

            dp[(i, prev)] = cost
            return cost

        result = dfs(0, -1)
        return result if result != float('inf') else -1 