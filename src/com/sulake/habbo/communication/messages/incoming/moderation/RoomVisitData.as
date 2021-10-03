package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_773:String;
      
      private var var_1707:int;
      
      private var var_1607:Boolean;
      
      private var _roomId:int;
      
      private var var_1708:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1607 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_773 = param1.readString();
         var_1708 = param1.readInteger();
         var_1707 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1607;
      }
      
      public function get roomName() : String
      {
         return var_773;
      }
      
      public function get enterMinute() : int
      {
         return var_1707;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1708;
      }
   }
}
