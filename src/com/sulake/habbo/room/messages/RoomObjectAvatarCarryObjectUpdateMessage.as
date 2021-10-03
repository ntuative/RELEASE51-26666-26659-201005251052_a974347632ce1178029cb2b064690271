package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1117:int;
      
      private var var_1391:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_1117 = param1;
         var_1391 = param2;
      }
      
      public function get itemType() : int
      {
         return var_1117;
      }
      
      public function get itemName() : String
      {
         return var_1391;
      }
   }
}
