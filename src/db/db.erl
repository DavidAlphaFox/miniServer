%% @author caohongyang
%% @doc	database operate interface
%% 抽象数据库层接口

-module(db).
-include("common.hrl").
-export([connect_mysql/0]).

connect_mysql() ->
	IP="localhost",
	Port=3306,
	UserName="root",
	Pass="123.com",
	DBName="mini_gamedb",
	Num=10,
	emysql:add_pool(?DB, Num,UserName,Pass, IP, Port,DBName, utf8),
	%% 预定义一些常用的sql语句
%%	emysql:prepare(get_role_info,<<"SELECT accid,roleName,isMale,level,exp,coin,reputation,gold,goldBonus,goldUsed,unioncoin,profoundCrystal,vipLevel,goldTotalPaid,title,fightPower,lastLogoutTime,familyID,lastJoinFamily,head,payExtReward,extRdActTime,location,isFailed,devid,srcType,tasklevel,plane_level,teamid,honor,pvppoint,carloswintime,carlosequaltime,carloslosetime,carlosseason,carlosprewintime,carlospreequaltime,carlosprelosetime,carlospreseason,home_resource,firtPayStatus,ticket,laputastone,transmigration,sGoldTotalPaid,svipLevel,maxdungeonid,practiceland_point FROM gRole WHERE roleID= ?">>),
	ok.

