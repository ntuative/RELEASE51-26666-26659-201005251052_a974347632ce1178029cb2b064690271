package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_499:int = 0;
      
      public static const const_116:int = 2;
      
      public static const const_188:int = 1;
      
      public static const const_587:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_2127:Boolean;
      
      private var var_2123:Boolean;
      
      private var var_2126:int;
      
      private var var_2124:Array;
      
      private var var_2125:int;
      
      private var var_2122:Boolean;
      
      private var var_1283:String;
      
      private var var_2121:int;
      
      private var var_2024:int;
      
      private var var_1263:int;
      
      private var _roomId:int;
      
      private var var_657:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_2121;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_2121 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_657;
      }
      
      public function get allowPets() : Boolean
      {
         return var_2122;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_2125 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_2124 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_657 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_2127;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_2123;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_2126;
      }
      
      public function get categoryId() : int
      {
         return var_1263;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_2122 = param1;
      }
      
      public function get controllerCount() : int
      {
         return var_2125;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_2124;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_2024 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_2127 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_2123 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_2126 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_2024;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1263 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1283 = param1;
      }
      
      public function get description() : String
      {
         return var_1283;
      }
   }
}
