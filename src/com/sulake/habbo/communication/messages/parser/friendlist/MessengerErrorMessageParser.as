package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MessengerErrorMessageParser implements IMessageParser
   {
       
      
      private var var_1247:int;
      
      private var var_2372:int;
      
      public function MessengerErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2372 = param1.readInteger();
         this.var_1247 = param1.readInteger();
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1247;
      }
      
      public function get clientMessageId() : int
      {
         return this.var_2372;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
   }
}
