package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_233:String = "RWUIUE_PEER";
      
      public static const const_213:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1204:String = "BOT";
      
      public static const const_884:int = 2;
      
      public static const const_1241:int = 0;
      
      public static const const_847:int = 3;
       
      
      private var var_300:String = "";
      
      private var var_1320:String = "";
      
      private var var_2186:Boolean = false;
      
      private var var_1979:int = 0;
      
      private var var_2189:int = 0;
      
      private var var_2187:Boolean = false;
      
      private var var_1318:String = "";
      
      private var var_2193:Boolean = false;
      
      private var var_865:int = 0;
      
      private var var_2185:Boolean = true;
      
      private var var_1051:int = 0;
      
      private var var_2188:Boolean = false;
      
      private var var_1188:Boolean = false;
      
      private var var_2192:Boolean = false;
      
      private var var_2182:int = 0;
      
      private var var_2191:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_264:Array;
      
      private var var_1190:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1983:int = 0;
      
      private var var_2183:Boolean = false;
      
      private var var_2190:int = 0;
      
      private var var_2184:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_264 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_2189;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_2189 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_2186;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_2185;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_2185 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_2193 = param1;
      }
      
      public function get motto() : String
      {
         return var_1320;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_2188 = param1;
      }
      
      public function get method_1() : Boolean
      {
         return var_1188;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1320 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_2183;
      }
      
      public function get groupBadgeId() : String
      {
         return var_2184;
      }
      
      public function set method_1(param1:Boolean) : void
      {
         var_1188 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_2191;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_2182 = param1;
      }
      
      public function get badges() : Array
      {
         return var_264;
      }
      
      public function get amIController() : Boolean
      {
         return var_2187;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_2187 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_2183 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_2190 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_2184 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1318 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_2193;
      }
      
      public function set figure(param1:String) : void
      {
         var_300 = param1;
      }
      
      public function get carryItem() : int
      {
         return var_2182;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1190;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_2188;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_865 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_2190;
      }
      
      public function get realName() : String
      {
         return var_1318;
      }
      
      public function get figure() : String
      {
         return var_300;
      }
      
      public function set webID(param1:int) : void
      {
         var_1983 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_264 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_2192 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_2191 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_865;
      }
      
      public function get webID() : int
      {
         return var_1983;
      }
      
      public function set groupId(param1:int) : void
      {
         var_1051 = param1;
      }
      
      public function get xp() : int
      {
         return var_1979;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_2186 = param1;
      }
      
      public function get groupId() : int
      {
         return var_1051;
      }
      
      public function get canTrade() : Boolean
      {
         return var_2192;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1190 = param1;
      }
      
      public function set xp(param1:int) : void
      {
         var_1979 = param1;
      }
   }
}
