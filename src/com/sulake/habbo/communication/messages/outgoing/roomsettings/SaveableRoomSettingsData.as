package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _password:String;
      
      private var var_2121:int;
      
      private var var_2024:int;
      
      private var var_2127:Boolean;
      
      private var var_2123:Boolean;
      
      private var var_2124:Array;
      
      private var var_2122:Boolean;
      
      private var var_1263:int;
      
      private var _name:String;
      
      private var _roomId:int;
      
      private var var_657:Array;
      
      private var var_1283:String;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get doorMode() : int
      {
         return var_2024;
      }
      
      public function get description() : String
      {
         return var_1283;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_2123;
      }
      
      public function get maximumVisitors() : int
      {
         return var_2121;
      }
      
      public function set description(param1:String) : void
      {
         var_1283 = param1;
      }
      
      public function get password() : String
      {
         return _password;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_2122 = param1;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_2121 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get categoryId() : int
      {
         return var_1263;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_2124;
      }
      
      public function get tags() : Array
      {
         return var_657;
      }
      
      public function get allowPets() : Boolean
      {
         return var_2122;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_2024 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_2127 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_657 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_2124 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1263 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_2127;
      }
      
      public function set password(param1:String) : void
      {
         _password = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_2123 = param1;
      }
   }
}
