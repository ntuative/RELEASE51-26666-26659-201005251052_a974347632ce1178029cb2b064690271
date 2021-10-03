package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1153:int = 80;
       
      
      private var var_541:Map;
      
      private var var_773:String = "";
      
      private var var_1379:Array;
      
      public function UserRegistry()
      {
         var_541 = new Map();
         var_1379 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_541.getValue(var_1379.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_773;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_541.getValue(param1) != null)
         {
            var_541.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_773);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_773 == "")
         {
            var_1379.push(param1);
         }
         var_541.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_541;
      }
      
      public function unregisterRoom() : void
      {
         var_773 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_541.length > const_1153)
         {
            _loc1_ = var_541.getKey(0);
            var_541.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_773 = param1;
         if(var_773 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
