<?php

/**
 * 废弃不使用
 * @Author: xuren
 * @Date:   2019-05-23 10:41:18
 * @Last Modified by:   xuren
 * @Last Modified time: 2019-06-05 11:40:50
 */
class generateCutPercentByDay{
	function __construct($c){
        $this->commands = $c;
    }
    public function run($attr){
        ini_set('display_errors','On');

        echo "脚本执行时间".date('Y-m-d H:i:s')."\n";
        $day = date("Y-m-d");
        $this->generateData($day);
    }

    // 生成某日已上线游戏的暗扣比例
    private function generateData($day){
    	echo $day;
    	// 获取所有游戏id
    	$count = GameCutModel::db()->getCount("stat_datetime='".$day."'");
    	if($count){
    		echo "数据已存在，无需导入\n";
    		return false;
    	}
    	$addTime = time();
    	// $games = GamesModel::db()->getAllBySQL("select id from games");
    	// 查找昨日已存在的暗扣
    	$yesterday = date("Y-m-d", strtotime($day." -1 day"));

    	$sql = "select g.id game_id,IFNULL(b.click_cut,0) as click_cut,IFNULL(b.cost_cut,0) as cost_cut,IFNULL(b.show_cut,0) as show_cut,'".$day."' as stat_datetime,".$addTime." as a_time from games g left join (select game_id,click_cut,cost_cut,show_cut,stat_datetime from ad_cut_percent_byday  where stat_datetime='".$yesterday."') b on g.id=b.game_id";
    	$res = GameCutModel::db()->getAllBySQL($sql);
    	$res2 = GameCutModel::db()->addAll($res);
    	if(!$res2){
    		echo "导入失败\n";
    		return false;
    	}
    	echo "导入".count($res)."条数据\n";
    	return true;


        
    }
}