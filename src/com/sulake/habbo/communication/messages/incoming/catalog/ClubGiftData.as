package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_2214:int;
      
      private var var_2213:Boolean;
      
      private var _offerId:int;
      
      private var var_1860:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_2213 = param1.readBoolean();
         var_2214 = param1.readInteger();
         var_1860 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1860;
      }
      
      public function get monthsRequired() : int
      {
         return var_2214;
      }
      
      public function get isVip() : Boolean
      {
         return var_2213;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
