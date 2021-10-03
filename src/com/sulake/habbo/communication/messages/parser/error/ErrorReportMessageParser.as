package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1270:int;
      
      private var var_1247:int;
      
      private var var_1269:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1270;
      }
      
      public function flush() : Boolean
      {
         var_1247 = 0;
         var_1270 = 0;
         var_1269 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1247;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1270 = param1.readInteger();
         var_1247 = param1.readInteger();
         var_1269 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1269;
      }
   }
}
