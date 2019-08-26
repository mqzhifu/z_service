<?php

/**
 * @Author: xuren
 * @Date:   2019-05-07 10:14:30
 * @Last Modified by:   xuren
 * @Last Modified time: 2019-05-07 10:15:49
 */
class PurchaseCntDayModel {
    static $_table = 'purchase_cnt_day';
    static $_pk = 'id';
    static $_db_key ="kxgame_log";
    static $_db = null;

    static function db(){
        if(self::$_db)
            return self::$_db;

        self::$_db = DbLib::getDbStatic(self::$_db_key,self::$_table,self::$_pk);
        return self::$_db;
    }

    static function __callStatic($func, $arguments){
        return call_user_func_array(array(self::db(),$func), $arguments);
    }
}