package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1091:Boolean;
      
      private var var_1272:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1091 = param1.readInteger() > 0;
         var_1272 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_1091;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1272;
      }
      
      public function flush() : Boolean
      {
         var_1091 = false;
         var_1272 = false;
         return true;
      }
   }
}
