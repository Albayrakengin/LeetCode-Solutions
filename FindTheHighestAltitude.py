class Solution:
    def largestAltitude(self, gain):
        altitude = 0
        max = 0
        for i in gain:
            altitude += i
            if altitude > max:
                max = altitude
        return max
