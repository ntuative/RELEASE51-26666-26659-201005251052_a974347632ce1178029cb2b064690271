package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_218:String = "e";
      
      public static const const_85:String = "i";
      
      public static const const_82:String = "s";
       
      
      private var var_1068:String;
      
      private var var_1311:String;
      
      private var var_1308:int;
      
      private var var_2067:int;
      
      private var var_1067:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1311 = param1.readString();
         var_2067 = param1.readInteger();
         var_1068 = param1.readString();
         var_1067 = param1.readInteger();
         var_1308 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1067;
      }
      
      public function get productType() : String
      {
         return var_1311;
      }
      
      public function get expiration() : int
      {
         return var_1308;
      }
      
      public function get furniClassId() : int
      {
         return var_2067;
      }
      
      public function get extraParam() : String
      {
         return var_1068;
      }
   }
}
