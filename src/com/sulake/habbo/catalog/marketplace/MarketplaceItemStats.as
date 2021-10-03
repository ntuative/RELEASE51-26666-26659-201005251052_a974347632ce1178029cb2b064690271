package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1534:Array;
      
      private var var_1671:int;
      
      private var var_1961:int;
      
      private var var_1960:int;
      
      private var var_1958:int;
      
      private var _dayOffsets:Array;
      
      private var var_1959:int;
      
      private var var_1535:Array;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrices(param1:Array) : void
      {
         var_1534 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_1961;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1535 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1671 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_1960;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1958;
      }
      
      public function get offerCount() : int
      {
         return var_1959;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1959 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1535;
      }
      
      public function get averagePrice() : int
      {
         return var_1671;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_1958 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_1960 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_1961 = param1;
      }
   }
}
