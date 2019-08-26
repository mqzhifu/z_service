<?php

class GoodsModel {
    static $_table = 'goods';
    static $_pk = 'id';
    static $_db_key =DEF_DB_CONN;
    static $_db = null;

    static $_type_virtual=1;
    static $_type_entity=2;

    //在线状态
    static $_online_true = 1;
    static $_online_false = 2;

    static function db(){
        if(self::$_db)
            return self::$_db;

        self::$_db = DbLib::getDbStatic(self::$_db_key,self::$_table,self::$_pk);
        return self::$_db;
    }

    static function __callStatic($func, $arguments){
        return call_user_func_array(array(self::db(),$func), $arguments);
    }

    static function getTypeDesc(){
        return array(self::$_type_virtual=>"虚拟",self::$_type_entity=>"实体");
    }

    static function getTypeDescOption($type = 0 ){
        $arr = self::getTypeDesc();
        $str = "";
        foreach($arr as $k=>$v){
            $selected = "";
            if($type && $type == $k){
                $selected ="selected='selected'";
            }
            $str .="<option $selected value='{$k}'>{$v}</option>";
        }
        return $str;
    }

    static function getTypeDescByKey($key){
        if(!self::getTypeDesc($key)){
            return "未知";
        }
        $arr = self::getTypeDesc();
        return $arr[$key];
    }

    static function getOnlineDesc(){
        return array(self::$_online_true=>'是',self::$_online_false=>'否');
    }

    static function keyInOnline($key){
        return in_array($key,array_flip(self::getOnlineDesc()));
    }

    static function getOnlineDescByKey($key){
        if(!self::getOnlineDesc($key)){
            return "未知";
        }
        $arr = self::getOnlineDesc();
        return $arr[$key];
    }

    static function getOnlineDescOption($type = 0 ){
        $arr = self::getOnlineDesc();
        $str = "";
        foreach($arr as $k=>$v){
            $selected = "";
            if($type && $type == $k){
                $selected ="selected='selected'";
            }
            $str .="<option $selected value='{$k}'>{$v}</option>";
        }
        return $str;
    }
}