package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_831:String = "price_type_none";
      
      public static const const_377:String = "pricing_model_multi";
      
      public static const const_335:String = "price_type_credits";
      
      public static const const_379:String = "price_type_credits_and_pixels";
      
      public static const const_459:String = "pricing_model_bundle";
      
      public static const const_489:String = "pricing_model_single";
      
      public static const const_727:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1424:String = "pricing_model_unknown";
      
      public static const const_382:String = "price_type_pixels";
       
      
      private var var_2034:int;
      
      private var var_893:int;
      
      private var _offerId:int;
      
      private var var_894:int;
      
      private var var_424:String;
      
      private var var_612:String;
      
      private var var_456:ICatalogPage;
      
      private var var_423:IProductContainer;
      
      private var var_1291:String;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1291 = param1.localizationId;
         var_893 = param1.priceInCredits;
         var_894 = param1.priceInPixels;
         var_456 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_424;
      }
      
      public function get page() : ICatalogPage
      {
         return var_456;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_2034 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_423;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_894;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1291 = "";
         var_893 = 0;
         var_894 = 0;
         var_456 = null;
         if(var_423 != null)
         {
            var_423.dispose();
            var_423 = null;
         }
      }
      
      public function get previewCallbackId() : int
      {
         return var_2034;
      }
      
      public function get priceInCredits() : int
      {
         return var_893;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_424 = const_489;
            }
            else
            {
               var_424 = const_377;
            }
         }
         else if(param1.length > 1)
         {
            var_424 = const_459;
         }
         else
         {
            var_424 = const_1424;
         }
      }
      
      public function get priceType() : String
      {
         return var_612;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_424)
         {
            case const_489:
               var_423 = new SingleProductContainer(this,param1);
               break;
            case const_377:
               var_423 = new MultiProductContainer(this,param1);
               break;
            case const_459:
               var_423 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_424);
         }
      }
      
      public function get localizationId() : String
      {
         return var_1291;
      }
      
      private function analyzePriceType() : void
      {
         if(var_893 > 0 && var_894 > 0)
         {
            var_612 = const_379;
         }
         else if(var_893 > 0)
         {
            var_612 = const_335;
         }
         else if(var_894 > 0)
         {
            var_612 = const_382;
         }
         else
         {
            var_612 = const_831;
         }
      }
   }
}
