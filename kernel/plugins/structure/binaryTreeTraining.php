<?php
class BinaryTreeTraining{
    //已知二叉树中包含的都是整数（正0负），求出，某几个元素值 的和，最长路径
    function sumUnsortIntMaxRange($nodeIndex,$k,$sum,$level){
        if($nodeIndex === null){
            return -2;
        }

        $node = $this->getNodeByIndex($nodeIndex);

        $currentSum = $sum + $node->data;
        $v = $currentSum - $k;

        $this->hashMap[$currentSum] = $level;
        if(isset($this->hashMap[$v])){
            if($level - $this->hashMap[$v] > $this->maxLen){
                $this->maxLen = $level - $this->hashMap[$v];
            }
        }

        $this->sumUnsortIntMaxRange($node->left,$k,$currentSum,$level+1);
        $this->sumUnsortIntMaxRange($node->right,$k,$currentSum,$level+1);

    }
}