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

    //给定一个数：X，根据 钱的面额，计算出 多少种 钱 累加=X
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

    function changeMoney2($moneyType,$x){
        $data = null;
        foreach ($moneyType as $k=>$v) {
            for($y =0;$y<=$x;$y=$y+$v){
                $data[$k][] = $y;
            }
        }
        var_dump($data);

        $this->data = $data;
        $this->x = $x;
        $this->successTotalCnt = 0;
        $this->loopCnt = 0;
        $this->rsMap = null;

        $this->loopChangeMoney();

        $this->tt("loopCnt:".$this->loopCnt);
       $this->tt("successTotalCnt:".$this->successTotalCnt);

    }

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
//                $this->rsMap[][]
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
}