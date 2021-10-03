package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CanCreateRoomMessageParser implements IMessageParser
   {
      
      public static const const_1694:int = 0;
      
      public static const const_1498:int = 1;
       
      
      private var var_2345:int;
      
      private var var_1352:int;
      
      public function CanCreateRoomMessageParser()
      {
         super();
      }
      
      public function get roomLimit() : int
      {
         return var_2345;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1352 = param1.readInteger();
         this.var_2345 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get resultCode() : int
      {
         return var_1352;
      }
   }
}
