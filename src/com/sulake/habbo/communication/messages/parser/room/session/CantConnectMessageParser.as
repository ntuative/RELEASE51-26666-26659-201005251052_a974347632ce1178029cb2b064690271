package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1473:int = 2;
      
      public static const const_1336:int = 4;
      
      public static const const_1258:int = 1;
      
      public static const const_1325:int = 3;
       
      
      private var var_1063:int = 0;
      
      private var var_901:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_1063;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1063 = param1.readInteger();
         if(var_1063 == 3)
         {
            var_901 = param1.readString();
         }
         else
         {
            var_901 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1063 = 0;
         var_901 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_901;
      }
   }
}
