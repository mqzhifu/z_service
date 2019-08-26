<?php
class FeedbackModel {
	static $_table = 'feedback';
	static $_pk = 'id';
	static $_db_key = DEF_DB_CONN;
	static $_db = null;

    static $_aa = 1;
    static $_bb = 2;
    static $_cc = 3;

	static function db(){
		if(self::$_db)
			return self::$_db;
		
		self::$_db = DbLib::getDbStatic(self::$_db_key,self::$_table,self::$_pk);
		return self::$_db;
	}
	
	public static function __callStatic($func, $arguments){
		return call_user_func_array(array(self::db(),$func), $arguments);
	}

    /**
     * @param $sql
     * @return array
     */
	public static function getAll($sql){
        $result = self::db()->query($sql);
        return $result;
    }

    /**
     * @return array
     */
    public static function getStatusAll(){
        return array(self::$_aa=>'未回复', self::$_bb=>'已回复', self::$_cc=>'追加');
    }

    /**
     * @param $sql
     * @return bool
     */
    public static function updateInfo($sql){
        $result = self::db()->query($sql);
        return true;
    }
}