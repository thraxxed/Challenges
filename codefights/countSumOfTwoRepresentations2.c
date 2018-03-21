// Given integers n, l and r, find the number of ways to represent n as
// a sum of two integers A and B such that l ≤ A ≤ B ≤ r.

int countSumOfTwoRepresentations2(int n, int l, int r) {
    int ways = 0;
    for (int i = l; i <= r; ++i) if (i <= n - i && n - i <= r) ways++;
    return ways;
}
