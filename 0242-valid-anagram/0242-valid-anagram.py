class Solution:
    def isAnagram(self, s: str, t: str):
        sorted_s = sorted(s)
        sorted_t = sorted(t)
        return sorted_s == sorted_t
        