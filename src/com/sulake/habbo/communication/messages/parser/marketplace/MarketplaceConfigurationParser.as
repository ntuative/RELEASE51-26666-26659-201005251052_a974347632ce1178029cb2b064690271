package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1935:int;
      
      private var var_1550:int;
      
      private var var_1933:int;
      
      private var var_1934:int;
      
      private var var_1936:int;
      
      private var var_1551:int;
      
      private var var_1937:int;
      
      private var var_1227:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1935;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1550;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1937;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1934;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1936;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1551;
      }
      
      public function get commission() : int
      {
         return var_1933;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1227 = param1.readBoolean();
         var_1933 = param1.readInteger();
         var_1550 = param1.readInteger();
         var_1551 = param1.readInteger();
         var_1934 = param1.readInteger();
         var_1935 = param1.readInteger();
         var_1936 = param1.readInteger();
         var_1937 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1227;
      }
   }
}
