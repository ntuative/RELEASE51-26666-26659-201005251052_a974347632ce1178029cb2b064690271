package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1117:String;
      
      private var var_2053:int;
      
      private var var_2057:int;
      
      private var var_1549:int;
      
      private var var_2059:int;
      
      private var _category:int;
      
      private var var_2418:int;
      
      private var var_2054:int;
      
      private var var_2052:int;
      
      private var var_2055:int;
      
      private var var_2056:int;
      
      private var var_2058:Boolean;
      
      private var var_1405:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_2053 = param1;
         var_1117 = param2;
         var_2057 = param3;
         var_2055 = param4;
         _category = param5;
         var_1405 = param6;
         var_1549 = param7;
         var_2052 = param8;
         var_2054 = param9;
         var_2056 = param10;
         var_2059 = param11;
         var_2058 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_2055;
      }
      
      public function get extra() : int
      {
         return var_1549;
      }
      
      public function get stuffData() : String
      {
         return var_1405;
      }
      
      public function get groupable() : Boolean
      {
         return var_2058;
      }
      
      public function get creationMonth() : int
      {
         return var_2056;
      }
      
      public function get roomItemID() : int
      {
         return var_2057;
      }
      
      public function get itemType() : String
      {
         return var_1117;
      }
      
      public function get itemID() : int
      {
         return var_2053;
      }
      
      public function get songID() : int
      {
         return var_1549;
      }
      
      public function get timeToExpiration() : int
      {
         return var_2052;
      }
      
      public function get creationYear() : int
      {
         return var_2059;
      }
      
      public function get creationDay() : int
      {
         return var_2054;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
