<?php
//递归相关的程序
class Recursion{

    public $cnt = 0;
    function hanoi($n,$from,$tmp,$to){
        $this->cnt++;
        _p($this->cnt . ",n=$n hode from :$from to : $to,use tmp $tmp ");
        if($n == 0){
            _p("dene 0");
            return 0;
        }


        $this->hanoi($n - 1,$from,$to,$tmp);
        $x = $n - 1;
        echo "step ".$x." ,move $from to $to <br/>";
        $this->hanoi($n - 1,$tmp,$from,$to);
    }



    //将一个栈，逆过来。
    public $stackReverseArr = null;
    function stackReverse($stack){
        $element = $stack->pop();
        if($stack->isEmpty()){
            $this->stackReverseArr->push($element);
            return 1;
        }else{
            $this->stackReverseArr->push($element);
            $this->stackReverse($stack);

        }
    }

    function stackReverseTest(){
        $stack =  new StackArr();
        $this->stackReverseArr = new StackArr();

        $arr = array(1,9,5,12,10,4,2,3);
        $stack->pushGroup($arr);

        $stack->showAll();
//        var_dump($stack);

        $this->stackReverse($stack);

        $this->stackReverseArr->showAll();
        exit;
    }
}
