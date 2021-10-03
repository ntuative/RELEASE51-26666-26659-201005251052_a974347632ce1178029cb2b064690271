package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1743:int;
      
      private var var_1196:PetData;
      
      private var var_1742:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1743;
      }
      
      public function get petData() : PetData
      {
         return var_1196;
      }
      
      public function flush() : Boolean
      {
         var_1196 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_1742;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1743 = param1.readInteger();
         var_1742 = param1.readInteger();
         var_1196 = new PetData(param1);
         return true;
      }
   }
}
