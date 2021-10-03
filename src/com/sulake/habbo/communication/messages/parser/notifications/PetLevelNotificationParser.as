package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_300:String;
      
      private var var_1695:int;
      
      private var var_1944:String;
      
      private var var_990:int;
      
      private var var_1306:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1306;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1306 = param1.readInteger();
         var_1944 = param1.readString();
         var_1695 = param1.readInteger();
         var_300 = param1.readString();
         var_990 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_1944;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_300;
      }
      
      public function get petType() : int
      {
         return var_990;
      }
      
      public function get level() : int
      {
         return var_1695;
      }
   }
}
