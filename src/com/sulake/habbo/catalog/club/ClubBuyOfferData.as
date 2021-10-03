package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var var_2201:int;
      
      private var var_2197:Boolean = false;
      
      private var var_2196:int;
      
      private var var_2195:int;
      
      private var var_2194:int;
      
      private var var_1335:String;
      
      private var var_1145:int;
      
      private var _offerId:int;
      
      private var var_2198:int;
      
      private var var_2199:Boolean;
      
      private var var_2200:Boolean;
      
      private var var_456:ICatalogPage;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         _offerId = param1;
         var_1335 = param2;
         var_1145 = param3;
         var_2200 = param4;
         var_2199 = param5;
         var_2196 = param6;
         var_2194 = param7;
         var_2195 = param8;
         var_2201 = param9;
         var_2198 = param10;
      }
      
      public function get month() : int
      {
         return var_2201;
      }
      
      public function get page() : ICatalogPage
      {
         return var_456;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get vip() : Boolean
      {
         return var_2199;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         var_456 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function get priceInPixels() : int
      {
         return 0;
      }
      
      public function get priceType() : String
      {
         return Offer.const_335;
      }
      
      public function get upgrade() : Boolean
      {
         return var_2200;
      }
      
      public function get localizationId() : String
      {
         return var_1335;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_2194;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return var_2197;
      }
      
      public function get day() : int
      {
         return var_2198;
      }
      
      public function get year() : int
      {
         return var_2195;
      }
      
      public function get price() : int
      {
         return var_1145;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         var_2197 = param1;
      }
      
      public function get periods() : int
      {
         return var_2196;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get priceInCredits() : int
      {
         return var_1145;
      }
      
      public function get productCode() : String
      {
         return var_1335;
      }
   }
}
