package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1779:int;
      
      private var var_1111:int;
      
      private var var_2264:int;
      
      private var var_1614:int;
      
      private var var_119:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1614 = param1.readInteger();
         var_2264 = param1.readInteger();
         var_1111 = param1.readInteger();
         var_1779 = param1.readInteger();
         var_119 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1614);
      }
      
      public function get chatRecordId() : int
      {
         return var_1779;
      }
      
      public function get reportedUserId() : int
      {
         return var_1111;
      }
      
      public function get callerUserId() : int
      {
         return var_2264;
      }
      
      public function get callId() : int
      {
         return var_1614;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_119;
      }
   }
}
