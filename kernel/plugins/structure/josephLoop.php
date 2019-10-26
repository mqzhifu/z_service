<?php
//约瑟夫-环
class JosephLoop{
    public $n = 5;//总共有多少个人
    public $m = 3;//步长，到这个数，踢掉一个人
    function method1 (){

//        $this->merger();
        $this->linkLoop();
    }
    //归并算法
/*
 *
 原始数字 : 1 2 3 4 5 6 7 8 9 10 对应 位置下标 0 1 2 3 4 5 6 7 8 9,M=3
第一次弹出 下标为2 的元素，队列为： 0 1 3 4 5 6 7 8 ,环型变成：3 4 5 6 7 8 9 0 1
将这个环的下标值，重新再编写一下0 1 2 3 4 5 6 7 8 ，转换成旧环的位置公式   下标 + M % 旧-元素个数总和
0 + 3 % 10 = 3,4 5 6 7 8 9 0 1
观察新环：0 1 2 3 4 5 6 7 8，这次要弹出的是依然还是3，套用公式 3 + 3 % 9 = 6，再返回到原始数字队列中，第二次弹出的就是6
10个数，最终得弹出9个数，剩下一个数。按照新环的算法，每弹一个数，都是基于上一轮的环。

根据这一次的新环，如何 计算 上一次弹出 的数字呢？
0 1 2 3 4 5 6 7 8  (?)  ，
上一轮的最后一个元素，就是弹出的那个数c


. 正常理解                       新环                          递归计算
0 1 2 3 4 5 6 7 8 9 ->2			 0 1 2 3 4 5 6 7 8 9                            0 + 3 % 10 = 3
0 1 3 4 5 6 7 8 9   ->5          7 8 ? 0 1 2 3 4 5 6     6 + 3 % 9 = 0
0 1 3 4 6 7 8 9     ->8          4 5   6 7 ? 0 1 2 3         3 + 3 % 8 = 6
0 1 3 4 6 7 9	    ->1          1 2   3   4 5 6 ? 0        0 + 3 % 7 = 3
0 3 4 6 7 9		    ->6          5 ?   0   1 2 3   4 	    3 + 3 % 6 = 0
0 3 4 7 9 		    ->0          2     3   4 ? 0   1 		        0 + 3 % 5 = 3
3 4 7 9		        ->7          3 ?   0   1   2  		            1 + 3 % 4 = 0
3 4 9		        ->4          0     1   2   ?		            1 + 3 % 3 = 1  0
3 9		            ->9          0 	   1   ?	                0 + 3 % 2 = 1
3                                0



0                   0 + 3 % 2 = 1
0 1                 1 + 3 % 3 = 1
0 1 2               1 + 3 % 4 = 0
0 1 2 3             0 + 3 % 5 = 3
0 1 2 3 4           3 + 3 % 6 = 0
0 1 2 3 4 5         0 + 3 % 7 = 3
0 1 2 3 4 5 6       3 + 3 % 8 = 6
0 1 2 3 4 5 6 7     6 + 3 % 9 = 0
0 1 2 3 4 5 6 7 8   0 + 3 % 10 = 3

*/



    function merger(){

    }

    function linkLoop(){
        include_once PLUGIN.DS."structure".DS."linkLoop.php";

        $link = new LinkLoop();

        for ($i=1;$i<=$this->n;$i++){
            $link->add($i);
        }
        //取出头位置，当做死循环的第一个元素，之后会依次拿出下一个元素赋值
        $first = $link->nodePool[$link->head]['current'];
        //步长，等于这个值 代码 得把这个数踢出去了
        $inrc = 1;
        $compareCount = 1;//一共有多少次循环
        $exitInrc = 1;//防止 死循环
        while($link->nodePoolLength > 1){
            echo "first:".$first ." inrc:".$inrc."<br/>";
            //防止 死循环
            if($exitInrc > $this->n * 10){
                echo "in break";
                break;
            }
            $exitInrc++;
            //防止 死循环
            $compareCount++;
            $nextFirst  = $link->nodePool[$first]['next'];
            //当前值的下一个元素
            if($inrc + 1 == $this->m ){
                echo "in step ,"." head:".$link->head.",foot:".$link->foot ." ";
                echo "nodePool:".$link->nodePoolLength ." nextFirst:".$nextFirst."<br/>";
                $first =  $link->nodePool[$nextFirst]['next'];
                $rs = $link->delOne($nextFirst,2);
                if($rs <= 0 ){
                    exit("del one error");
                }
                $inrc = 1;
                continue;
            }

            $first = $nextFirst;
            $inrc++;
        }

        echo "compare count".$compareCount."<br/>";
        var_dump($link->nodePool[$first]);exit;
    }
}