class Solution:
    def largestAltitude(self, gain):
        altitude = 0
        max = 0
        for i in gain:
            altitude += i
            max = max(altitude, max)
        return max
    
    """
        def largestAltitude(self, gain):
        altitude = 0
        max = 0
        for i in gain:
            altitude += i
            if altitude > max:
                max = altitude
        return max

        # reasonably slower due to if statement. max func is relatively faster and more memory friendly.
    """