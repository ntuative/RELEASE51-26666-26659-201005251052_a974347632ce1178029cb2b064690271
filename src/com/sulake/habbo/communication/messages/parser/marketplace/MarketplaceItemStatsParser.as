package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1534:Array;
      
      private var var_1671:int;
      
      private var var_1961:int;
      
      private var var_1958:int;
      
      private var var_1960:int;
      
      private var _dayOffsets:Array;
      
      private var var_1959:int;
      
      private var var_1535:Array;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1534;
      }
      
      public function get furniTypeId() : int
      {
         return var_1961;
      }
      
      public function get historyLength() : int
      {
         return var_1960;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1958;
      }
      
      public function get offerCount() : int
      {
         return var_1959;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1535;
      }
      
      public function get averagePrice() : int
      {
         return var_1671;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1671 = param1.readInteger();
         var_1959 = param1.readInteger();
         var_1960 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _dayOffsets = [];
         var_1534 = [];
         var_1535 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _dayOffsets.push(param1.readInteger());
            var_1534.push(param1.readInteger());
            var_1535.push(param1.readInteger());
            _loc3_++;
         }
         var_1958 = param1.readInteger();
         var_1961 = param1.readInteger();
         return true;
      }
   }
}
