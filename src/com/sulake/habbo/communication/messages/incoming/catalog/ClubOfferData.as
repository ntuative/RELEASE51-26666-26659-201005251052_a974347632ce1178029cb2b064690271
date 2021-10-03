package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_2201:int;
      
      private var var_1145:int;
      
      private var var_2196:int;
      
      private var _offerId:int;
      
      private var var_2195:int;
      
      private var var_2198:int;
      
      private var var_2199:Boolean;
      
      private var var_2194:int;
      
      private var var_2200:Boolean;
      
      private var var_1335:String;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1335 = param1.readString();
         var_1145 = param1.readInteger();
         var_2200 = param1.readBoolean();
         var_2199 = param1.readBoolean();
         var_2196 = param1.readInteger();
         var_2194 = param1.readInteger();
         var_2195 = param1.readInteger();
         var_2201 = param1.readInteger();
         var_2198 = param1.readInteger();
      }
      
      public function get year() : int
      {
         return var_2195;
      }
      
      public function get month() : int
      {
         return var_2201;
      }
      
      public function get price() : int
      {
         return var_1145;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get periods() : int
      {
         return var_2196;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_2194;
      }
      
      public function get upgrade() : Boolean
      {
         return var_2200;
      }
      
      public function get day() : int
      {
         return var_2198;
      }
      
      public function get vip() : Boolean
      {
         return var_2199;
      }
      
      public function get productCode() : String
      {
         return var_1335;
      }
   }
}
