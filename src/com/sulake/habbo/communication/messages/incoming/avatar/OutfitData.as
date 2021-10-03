package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1646:String;
      
      private var var_589:String;
      
      private var var_1496:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1496 = param1.readInteger();
         var_1646 = param1.readString();
         var_589 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_589;
      }
      
      public function get figureString() : String
      {
         return var_1646;
      }
      
      public function get slotId() : int
      {
         return var_1496;
      }
   }
}
