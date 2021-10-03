package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData
   {
       
      
      private var var_1670:int;
      
      private var var_1145:int;
      
      private var var_1671:int;
      
      private var var_1668:int = -1;
      
      private var var_166:int;
      
      private var var_1669:int;
      
      private var _image:BitmapData;
      
      private var _offerId:int;
      
      private var var_1144:int;
      
      private var var_1672:int;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int = -1)
      {
         super();
         _offerId = param1;
         var_1672 = param2;
         var_1669 = param3;
         var_1145 = param4;
         var_166 = param5;
         var_1671 = param6;
         var_1144 = param7;
      }
      
      public function set imageCallback(param1:int) : void
      {
         var_1670 = param1;
      }
      
      public function get imageCallback() : int
      {
         return var_1670;
      }
      
      public function get price() : int
      {
         return var_1145;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1668;
      }
      
      public function get offerCount() : int
      {
         return var_1144;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1669;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         var_1668 = param1;
      }
      
      public function dispose() : void
      {
         if(_image)
         {
            _image.dispose();
            _image = null;
         }
      }
      
      public function set price(param1:int) : void
      {
         var_1145 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1144 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get status() : int
      {
         return var_166;
      }
      
      public function get averagePrice() : int
      {
         return var_1671;
      }
      
      public function set offerId(param1:int) : void
      {
         _offerId = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(_image != null)
         {
            _image.dispose();
         }
         _image = param1;
      }
      
      public function get furniId() : int
      {
         return var_1672;
      }
   }
}
