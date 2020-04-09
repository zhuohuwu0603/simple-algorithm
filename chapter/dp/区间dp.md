# 区间dp

`区间dp`是线性动态规划的扩展，它在分阶段地划分问题时，与阶段中元素出现的顺序和由前一阶段的哪些元素合并而来由很大的关系。令状态f(i,j)表示将下标位置 i 到 j 的所有元素合并能获得的价值的最大值，那么 `f(i,j) = max{f(i,k) + f(k+1, j) + cost}`, cost 为将这两组元素合并起来的代价。

区间 DP 的特点：

- 合并：即将两个或多个部分进行整合，当然也可以反过来；
- 特征：能将问题分解为能两两合并的形式；
- 求解：对整个问题设最优值，枚举合并点，将问题分解为左右两个部分，最后合并两个部分的最优值得到原问题的最优值。
- 一般用二维数组表示区间
- 区间问题只需要考虑 `区间头和区间尾`

## 题目

- [LeetCode 516. Longest Palindromic Subsequence (medium)](https://github.com/muyids/leetcode/blob/master/algorithms/501-600/516.longest-palindromic-subsequence.md)

- [LeetCode 877. Stone Game (medium)](https://github.com/muyids/leetcode/blob/master/algorithms/801-900/877.stone-game.md)

- [LeetCode 87. Scramble String (hard)](https://github.com/muyids/leetcode/blob/master/algorithms/1-100/87.scramble-string.md)

- [LeetCode 312. Burst Balloons (hard)](https://github.com/muyids/leetcode/blob/master/algorithms/301-400/312.burst-balloons.md)

- [LeetCode 546. Remove Boxes (hard)](https://github.com/muyids/leetcode/blob/master/algorithms/501-600/546.remove-boxes.md)

- [Acwing282. 石子合并](https://www.acwing.com/problem/content/description/284/)

- [LeetCode 1000. Minimum Cost to Merge Stones (hard)](https://github.com/muyids/leetcode/blob/master/algorithms/901-1000/1000.minimum-cost-to-merge-stones.md)

