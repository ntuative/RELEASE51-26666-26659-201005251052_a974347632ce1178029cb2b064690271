package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1666:int;
      
      private var var_1667:String;
      
      private var var_1116:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1116 = param1.readInteger();
         this.var_1667 = param1.readString();
         this.var_1666 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1116;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_1666;
      }
      
      public function get requesterName() : String
      {
         return this.var_1667;
      }
   }
}
