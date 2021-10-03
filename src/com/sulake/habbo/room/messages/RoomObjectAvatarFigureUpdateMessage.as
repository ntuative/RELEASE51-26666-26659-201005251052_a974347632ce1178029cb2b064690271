package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2005:String;
      
      private var var_300:String;
      
      private var var_589:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         var_300 = param1;
         var_589 = param2;
         var_2005 = param3;
      }
      
      public function get race() : String
      {
         return var_2005;
      }
      
      public function get figure() : String
      {
         return var_300;
      }
      
      public function get gender() : String
      {
         return var_589;
      }
   }
}
