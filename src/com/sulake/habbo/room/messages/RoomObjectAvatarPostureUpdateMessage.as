package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1812:String;
      
      private var var_901:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_1812 = param1;
         var_901 = param2;
      }
      
      public function get postureType() : String
      {
         return var_1812;
      }
      
      public function get parameter() : String
      {
         return var_901;
      }
   }
}
