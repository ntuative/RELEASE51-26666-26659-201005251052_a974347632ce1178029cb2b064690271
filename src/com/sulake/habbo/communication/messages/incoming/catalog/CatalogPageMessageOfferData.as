package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_881:Array;
      
      private var var_893:int;
      
      private var var_1291:String;
      
      private var _offerId:int;
      
      private var var_894:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1291 = param1.readString();
         var_893 = param1.readInteger();
         var_894 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_881 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_881.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_881;
      }
      
      public function get priceInCredits() : int
      {
         return var_893;
      }
      
      public function get localizationId() : String
      {
         return var_1291;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_894;
      }
   }
}
