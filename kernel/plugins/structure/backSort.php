<?php
//判断一个链表是不是回文结构
//回文结构：一组数字，正序跟反序是一样的，比如： 1 2 3 4 5 4 3 2 1   ，无论正序，反序 都是一样的
class BackSort{
    function judge($arrData){
        if(!$arrData || !is_array($arrData) || count($arrData) == 1 ){
            return -1;
        }

        //将数组除2，后半部分扔进栈里，弹出出来，就是倒序，也就是跟 前半部分如果相等就是
        $divisor =  count($arrData) / 2;
        $leftEnd = $divisor  -1;
        if(!is_int($divisor)){
            $divisor = (int)$divisor + 1;
            $leftEnd = $divisor - 2;
        }
        include_once PLUGIN.DS."structure".DS."stack.php";
        $stack =  new StackArr();

        for ($i = $divisor;$i< count($arrData);$i++ ){
            $stack->push($arrData[$i]);
        }

        $descData = $stack->popAll();
        $rs = true;
        for($i=0;$i<=$leftEnd;$i++){
            if($arrData[$i] != $descData[$i]){
                $rs = false;
                break;
            }
        }

        return $rs;
    }
}


