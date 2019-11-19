<?php
//矩阵相差
class Matrix{
    public $arr = null;
    public $debug = 1;

    function tt($info,$br = 1){
        if($this->debug){
            echo $info;
            if($br){
                echo  "<br/>";
            }
        }
    }
    //一组无序的，正整数（无符号），求：数组任意范围内，数字 累加和等于XXX
    function unsortUnsignedIntegerSumRange($k){
        $this->tt(json_encode($this->arr));

        $left = 0;
        $right = 0;
        $len = 0;
//        $sum = 0;
        $sum = $this->arr[$left];
        //当left指针已到最后一个元素后
        while($right < count($this->arr) ){
            $this->tt("left:$left,right:$right,sum:$sum");
            if( $sum == $k){//证明 几个元素之和等于XX值，记录下 下标，A-B 的距离 长
                $thisLen = $right - $left + 1;
                if( $thisLen > $len){
                    $len = $thisLen;
                }
                $this->tt("len:$thisLen");

                $left++;
                $sum -= $this->arr[$left];
            }elseif($sum < $k){
                $right ++;
                if($right >= count($this->arr)){
                    break;
                }
                $sum += $this->arr[$right];
            }elseif($sum > $k){
                $left ++;
                $sum -= $this->arr[$left];
            }else{
                exit(" -1 ,error.");
            }
        }
    }
    //一组无序的，整开（正、0、负）数，求：数组任意范围内，数字 累加和等于XXX
    function unsortIntegerSumRange($k){
        $this->tt("k:$k");
        $sum = 0;
        foreach ($this->arr as $k2=>$v) {
            $sum += $v;
        }
        $count = count($this->arr) - 1;
        $this->tt("s[i]=[0...". $count." ]=$sum");

        $map = array(0=>-1);//第一个值
        $sum = 0;
        foreach ($this->arr as $k2=>$v) {
            $sum += $v;
            $key = $sum - $k;
            if( isset($map[$key])){
                $this->tt("sum:$sum,map key:$key,map value:".$map[$key].",k2:$k2");
            }
            $map[$sum] = $k2;
        }

        var_dump($map);


        $this->unsortUnsignedIntegerSumRange($k);



//        $this->unsortUnsignedIntegerSumRange($k);
    }

    function addTestNumber($arr){
        foreach ($arr as $k=>$v) {
            $this->arr[] = $v;
        }

    }

    function showMatrix($arr){
        foreach ($arr as $k=>$rows) {
            foreach ($rows as $k2=>$number) {
                if($k2 == count($rows) - 1){
                    $this->tt($number);
                }else{
                    $this->tt($number . " ",0);
                }
            }
        }
    }

    //矩阵 乘法,暂只支持 相差维度的两个  矩阵
    function multiply (){
        $matrix1 = array(
            array(1,3),
            array(2,-1),
        );

        $matrix2 = array(
            array(2,-4),
            array(3,0),
        );

        $this->showMatrix($matrix1);
        $this->showMatrix($matrix2);

        $this->tt(" ");
        //行
        $countRow1 = count($matrix1);
        //列
        $countLine1 = count($matrix1[0]);

        $countRow2 = count($matrix2);
        $countLine2 = count($matrix2[0]);


        $rs = null;

        $this->tt("开始处理:");
        //line:当前列，row:当前行
        foreach ($matrix1 as $rowNo=>$rowNumbers) {
            foreach ($rowNumbers as $line=>$v) {
                $sumRow = 0;
                for($i=0;$i<$countRow1;$i++){
                    $sumNumber = $rowNumbers[$i] * $matrix2[$i][$line];
                    $this->tt($rowNumbers[$i]." X ".$matrix2[$i][$line]."=".$sumNumber);
                    $sumRow += $sumNumber;
                }
                $this->tt(" ");
                $rs[$rowNo][$line] = $sumRow;
            }
        }

        $this->tt("结果");

        $this->showMatrix($rs);

    }
    //换钱的最小币种
    //
    function changeMoneyLast($moneyType,$x){
        $dp =[];
        $limiter = 99;//算是占位数字吧，只要够大（无限大），因为 程序是计算哪个更小的，所以这个大的值是直接 被忽略的，可以理解 为0
//        for($i=0;$i<=$x;$i++){
//            $dp[0][$i] = $limiter;
//        }
//

        for($i=0;$i<count($moneyType);$i++){
            $dp[$i][0] = 0;
        }
//        $dp[0][0] = $limiter;
        for($j=1;$j <= $x;$j++){
            $dp[0][$j] = $limiter;
            if($j - $moneyType[0] >= 0  ){
                if( $dp[0][$j-$moneyType[0]] != $limiter){
                    $dp[0][$j] = $dp[0][$j - $moneyType[0]] +1;
                }

            }
        }


        $this->tt("");



        $left = 0;
        for($i=1;$i<count($moneyType);$i++){
            for($j=1;$j<=$x;$j++){
                $left = $limiter;
                if($j - $moneyType[$i] >= 0 ){
                    if( $dp[$i][$j-$moneyType[$i]] != $limiter){
                            $left = $dp[$i][$j - $moneyType[$i]] +1 ;
                    }
                }

                if($left <= $dp[$i-1][$j]){
                    $dp[$i][$j] = $left;
                }else{
                    $dp[$i][$j] = $dp[$i-1][$j];
                }


            }
        }

        $this->showDPHtml($moneyType,$dp,$x);
    }

    //给定一个数：X，根据 钱的面额，计算出 多少种 钱 累加=X
    //这个是最笨的方法，就是一层一层的循环，用最上层一个金额依次向下层循环
    //因为是最笨的，for 循环的次数也是写死的，所以只做参考使用
    function changeMoney($moneyType,$x){


        $m1 = $moneyType[0];
        $m2 = $moneyType[1];
        $m3 = $moneyType[2];

        $totalCnt = 0;
        $successTotalCnt = 0;

        for($y =0;$y<=$x;$y=$y+$m3){
            $p = $y;
            for($i =0;$i<=$x;$i=$i+$m1){
                $z = $i;
                for($j =0;$j<=$x;$j=$j+$m2){
                    $totalCnt++;
                    if($z + $j + $p == $x){
                        $successTotalCnt++;
                        $mod1 = $z/$m1;
                        $mod2 = $j/$m2;
                        $mod3 = $y / $m3;
                        $this->tt("$z({$m1}X{$mod1})+$j({$m2}X{$mod2})+$p({$m3}X{$mod3})");
                    }
                }
            }
        }

        $this->tt("total count:".$totalCnt);
        $this->tt("successTotalCnt:".$successTotalCnt);

    }
    //同上，但是实现方法是：动态规划法
    function changeMoney2($moneyType,$x){
        $dp =[];
        for($i=0;$i<=$x;$i++){
            $dp[0][$i] = 0;
        }

        for($i=1;$moneyType[0] * $i <= $x;$i++){
            $dp[0][$moneyType[0] * $i] = 1;
        }

        $this->tt("");

        for($i=0;$i<count($moneyType);$i++){
            $dp[$i][0] = 1;
        }


        for($i=1;$i< count($moneyType);$i++){
            for($j=1;$j<=$x;$j++){
                $num = 0;
                for($k=0;$j - $moneyType[$i] * $k >=0 ;$k++){
                    $num += $dp[$i-1][$j-$moneyType[$i] * $k];
                }
                $dp[$i][$j] = $num;
            }
        }


        $this->showDPHtml($moneyType,$dp,$x);
    }

    function showDPHtml($moneyType,$dp,$x){
        echo "<table border='1'>";

        echo "<tr><td><br/>";
        foreach ($moneyType as $k=>$v) {
            echo $v."<br/>";
        }
        echo "</td><td>";
        echo "<table>";
        for($i=0;$i<=$x;$i++){
            echo "<td>". $i ."</td>";
        }



        foreach ($dp as $k=>$v) {
            echo "<tr>";
            foreach ($v as $k2=>$v2) {
                echo "<td>".($v2."&nbsp;&nbsp;")."</td>";
            }
            echo "</tr>";
//            $this->tt("");
        }
        echo "</table>";
        echo "</td></tr>";

        echo "</table>";

        return 1;
    }


    function showDPStringHtml($dp,$str1,$str2){
        echo "<table border='1'>";

        echo "<tr><td><table><tr><td>&nbsp;</td></tr>";
        for ($i=0;$i<strlen($str1);$i++) {
            echo "<tr><td>". $str1[$i]."</td></tr>";
        }
        echo "</table></td><td>";
        echo "<table>";
        for ($i=0;$i<strlen($str2);$i++) {
            echo  "<td>".$str2[$i] . "</td>";
        }



        foreach ($dp as $k=>$v) {
            echo "<tr>";
            foreach ($v as $k2=>$v2) {
                echo "<td>".($v2."&nbsp;&nbsp;")."</td>";
            }
            echo "</tr>";
//            $this->tt("");
        }
        echo "</table>";
        echo "</td></tr>";

        echo "</table>";

        return 1;
    }


    public $loopChangeMoneyMapCnt = 0;//循环次数统计
    public $loopChangeMoneyMapData = null;//HASH表保存，一个区间计计算过的汇总值
    //$arr:[5,10,20...]  货币面值
    //$index:$arr的索引值 ，也就是计算到第几轮
    //$x:要计算的总金币值 ，如100
    function loopChangeMoneyMap($arr  ,$index = 0,$x){
        if(isset($arr[$index]))
            $this->tt("index:".$index.",value:".$arr[$index].".x:".$x);

        $success = 0;
        //先判断，是否到数组结尾的后面一个值，实际是溢出索引
        //实际：最后一个<货币面值>元素，后一个.
        if($index == count($arr)){
            //走到这里就是最后一步了，因为上层有个$x-$arr[$index] * $i,如果等于0，就证明 相等,也就证明找到了组满足条件的数
            if($x == 0){
                $success =  1;
            }else{
                $success =  0;
            }
        }else{
            for($i=0;$arr[$index] * $i <=$x;$i++){
                $this->loopChangeMoneyMapCnt++;//统计循环次数，无用
                //优化，原本，就是一层一层的计算，但实际上，很多计算是重复的
                //如：X=100,[5,10,20]  5x4+10x0+20x4=100  5x2+10x1+20x4=100,都有一个20x4，就没有必要再循环去计算这个式子
                //于是，增加一个HASH 数组，保存之前计算过的结果
                if(isset($this->loopChangeMoneyMapData[$index+1][$x-$arr[$index] * $i])){
                    $mapValue = $this->loopChangeMoneyMapData[$index+1][$x-$arr[$index] * $i];
                    if($mapValue == -1){
                        $success += 0;
                    }else{
                        $success +=$mapValue;
                    }

                }else{
                    $success +=  $this->loopChangeMoneyMap($arr,$index+1,$x-$arr[$index] * $i);
                    if($success){//无用，只是做输出
                        $tmpSum = $arr[$index] * $i;
                        $this->tt($arr[$index]."x".$i."=$tmpSum($x)");
                    }
                }
            }
        }

        if($success == 0){
            //未找到
            $this->loopChangeMoneyMapData[$index][$x] = -1;
        }else{
            $this->loopChangeMoneyMapData[$index][$x] = $success;
        }

        return $success;
    }
    //这个是我自己写的，未参考PDF
    //只是单纯的递归循环，实现
    function loopChangeMoney($numberArr = null,$key = 0){
//        $this->tt("key=".$key);
        if($key == count($this->data) - 1){//证明是最后一层了
            $numberArrSum = 0;
            $numberArrStr = "";
            foreach ($numberArr as $k=>$v) {
                $numberArrSum += $v;
                $numberArrStr .= $v ."+";
            }
            $numberArrStr = substr($numberArrStr,0,strlen($numberArrStr)-1);

            foreach ($this->data[$key] as $k=>$v) {
                $this->loopCnt++;
                if($numberArrSum+ $v == $this->x){
                    $this->successTotalCnt++;
                    $this->tt("ok:".$numberArrStr."+".$v);
                }
            }

            return -1;
        }


        $keyPlus = $key + 1;
        foreach ($this->data[$key] as $k=>$v) {
            $numberArrPlus = $numberArr;
            $numberArrPlus[] = $v;
            $this->loopChangeMoney($numberArrPlus,$keyPlus);
        }


    }
    //最小矩阵路径和
    //给出一个 2维矩阵，每个元素都是一个数字
    //从左上角，矩阵的第一个元素开始起，要么向下，要么向右，沿矩阵行走，走到，该矩阵 的最后右下角的元素，依次累加走过的元素的数字的和
    function minPathSum($arr){
        $dp = [];
        $sum = 0;
        for($i=0;$i<count($arr);$i++){
            $sum += $arr[$i][0];
            $dp[$i][0] = $sum;
        }

        $sum = 0;
        for($i=0;$i<count($arr[0]);$i++){
            $sum += $arr[0][$i];
            $dp[0][$i] = $sum;
        }

        for($i=1;$i<count($arr);$i++){
            for($j=1;$j<count($arr[0]);$j++){
                $up = $dp[$i-1][$j];
                $left = $dp[$i][$j-1];

                $yesDirection = 0;
                if($up > $left){
                    $yesDirection = $left;
                }elseif($up < $left){
                    $yesDirection = $up;
                }else{//这是相等的情况，先忽略

                }

                $dp[$i][$j] = $yesDirection + $arr[$i][$j];
            }
        }

        var_dump($dp);exit;
    }

    //最长递增子序列 LIS
    //数组  2，1，5，3，6，4，8，9，7
    //结果   5 6 8 9 10

    function longestIncreasingSubsequence($arr){
        foreach ($arr as $k=>$v) {
            echo $v ." ";
        }
        $this->tt(" ");

        $dp = [];
        //先计算出个矩阵 映射 关系,但该矩阵比较特殊，是个一维的
        //DP[KEY]=$arr[$i]，也就是以原数组中这个值结尾，DP-value=是以原数组中这个值结尾，最长的递增子序列的长度
        for($i=0;$i< count($arr) ;$i++){
            //初始化，保存原数组中，以某一个元素值，做为结尾，的长度
            $dp[$i] = 1;
            //先从原数组中，取出一个数，然后，到矩阵数组中计算
            //因为，每次循环的次数，是依次递增的。所以每次从<原数组>取出的数也可以看成是  以这个数结尾的<数>序列
            //第一次，是2，DP[O]=1,下面循环是不成立
            //第二次DP[1]=1，循环成立，还需要满足1个条件：
            //  1 当前这个值(根据I从原数据中获取)是否大于原数组前的几个数据（J循环，是依次从0循环到I）
            //$arr[1]=1 ,跟$arr[0]=2 比对，并不大于，循环停止$dp[1]=1
            //第3次，I=2, 5，循环，跟前2个数做比较.J=0  ,5>2($arr[0]) ，满足条件1，当前I值对应的DP值1，小于2(dp[0]+1)，当前DP值就为2(dp[0]+1),J=1 , 5>1($arr[1]，满足条件1，当前I值对应的DP值2，>=2(dp[1]+1)，不做处理
            //前三次后DP的结果为:  1 1 2，对应的位置为 0 1 2 ,再对应到原数组  2 1 5  ，以2结尾最长：1，以21结尾最长是1，以 2 1 5 最长为2.
            for($j=0;$j<$i;$j++){
                if($arr[$i] > $arr[$j]){
                    if($dp[$i] >= $dp[$j]+1){
                        $dp[$i] = $dp[$i];
                    }else{
                        $dp[$i] = $dp[$j]+1;
                    }
                }
            }
        }


        var_dump($dp);
        //找出DP中最大的那个值
        $maxKey = 0;
        $len = 0;
        foreach ($dp as $k=>$v) {
            if($v > $dp[$maxKey] ){
                $maxKey = $k;
                $len = $v;
            }
        }
        var_dump($maxKey);

        $lis = array();
        $lis[$len-1] = $arr[$maxKey];

        for($i=$maxKey;$i>0;$i--){
            if($arr[$i] < $arr[$maxKey] ){
                if($dp[$i] == $dp[$maxKey]-1){
                    $lis[--$len] = $arr[$i];
                    $maxKey = $i;
                }
            }
        }


        var_dump($lis);exit;

    }
    //最长公共因子
    function longCommonSubsequence(){
        $str1 = "1A2C3D4B56";
        $str2 = "B1D23CA45B6A";

        $str1Len =  strlen($str1);
        $str2Len =  strlen($str2);

        //$str1Len = M , $str2Len = N

        $dp = [];
        $dp[0][0] = $this->equal($str1[0] , $str2[0]);
        for($i=1;$i<$str1Len;$i++){
            $dp[$i][0] =  $this->equal( $str1[$i] , $str2[0]);
            if($dp[$i-1][0] >= $this->equal( $str1[$i] , $str2[0])){
                $dp[$i][0] = $dp[$i-1][0];
            }
        }

        for($j=1;$j<$str2Len;$j++){
            $dp[0][$j] =  $this->equal( $str2[$i] , $str1[0]);
            if($dp[0][$j-1] >= $this->equal( $str2[$i] , $str1[0])){
                $dp[0][$j] = $dp[0][$j-1];
            }
        }

        $this->showDPStringHtml($dp,$str1,$str2);
        exit;
//        var_dump($dp);exit;
    }

    function equal($a,$b){
        if($a == $b){
            return 1;
        }
        return 0;
    }

    /*
href="magnet:?xt=urn:btih:A2476387D13416E8156028201970A7430F90944A&dn=916-11&tr=http：//ya.97ro.org/"
*/
}