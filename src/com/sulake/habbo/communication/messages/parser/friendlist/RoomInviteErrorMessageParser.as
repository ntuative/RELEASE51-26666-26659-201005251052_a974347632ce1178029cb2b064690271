package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomInviteErrorMessageParser implements IMessageParser
   {
       
      
      private var include:Array;
      
      private var var_1247:int;
      
      public function RoomInviteErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.include = new Array();
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1247;
      }
      
      public function get failedRecipients() : Array
      {
         return this.include;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.var_1247 = param1.readInteger();
         if(this.var_1247 == 1)
         {
            _loc2_ = param1.readInteger();
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               this.include.push(param1.readInteger());
               _loc3_++;
            }
         }
         return true;
      }
   }
}
