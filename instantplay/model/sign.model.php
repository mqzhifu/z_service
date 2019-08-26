<?php
class SignModel {
	static $_table = 'sign_';
	static $_pk = 'id';
	static $_db_key ='kxgame_log';
	static $_db = null;

    static $_type_login = 1;//登陆
    static $_type_bind = 2;//绑定
	static $_type_reg = 3;//注册
	static $_type_findPs = 4;//找回密码

	static function db(){
		if(self::$_db)
			return self::$_db;
		
		self::$_db = DbLib::getDbStatic(self::$_db_key,self::$_table,self::$_pk);
		return self::$_db;
	}
	
	public static function __callStatic($func, $arguments){
		return call_user_func_array(array(self::db(),$func), $arguments);
	}

    static function getTableByMonth($y_m = ''){
	    if(!$y_m){
            $y_m = date("Ym");
        }
        $table  = self::$_table . $y_m;
        return $table;
    }

    static function getTable(){
        $table  = self::$_table . date("Ym");
        return $table;
    }

    static function add($data){
        return self::db()->add($data,self::getTable());
    }

    static function upById($id,$data){
        return self::db()->upById($id,$data,self::getTable());
    }

    static function getUserLisByTime($uid,$startTime,$endTime){
        return self::db()->getAll(" uid = $uid and a_time >= $startTime and a_time <= $endTime",self::getTable());
    }

    static function getUserLisByDay($uid,$day = ''){
	    if(!$day ){
	        $today = dayStartEndUnixtime();
            $day = $today['s_time'];
        }
	    return self::db()->getAll(" uid = $uid and a_time >= $day",self::getTable());
    }
	
}