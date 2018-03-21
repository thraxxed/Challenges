// Given array of integers, find the maximal possible sum of some of its 
// k consecutive elements.

// Definition for arrays:
// typedef struct arr_##name {
//   int size;
//   type *arr;
// } arr_##name;
//
// arr_##name alloc_arr_##name(int len) {
//   arr_##name a = {len, len > 0 ? malloc(sizeof(type) * len) : NULL};
//   return a;
// }
//
//

#include <limits.h>

int arrayMaxConsecutiveSum(arr_integer inputArray, int k) {
    int max_sum = INT_MIN;
    for (int i = 0; i < inputArray.size - (k - 1); ++i) {
        int consec_sum = 0;
        for (int j = 0; j < k; ++j) {
            consec_sum += inputArray.arr[i + j];
        }
        if (consec_sum > max_sum) max_sum = consec_sum;
    }
    return max_sum;
}
