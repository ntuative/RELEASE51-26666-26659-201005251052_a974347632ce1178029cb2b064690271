package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_628:Array;
      
      private var var_1145:int;
      
      private var var_1526:Array;
      
      private var var_629:Array;
      
      private var var_1227:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1227 = _loc2_.isWrappingEnabled;
         var_1145 = _loc2_.wrappingPrice;
         var_1526 = _loc2_.stuffTypes;
         var_629 = _loc2_.boxTypes;
         var_628 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_628;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1526;
      }
      
      public function get price() : int
      {
         return var_1145;
      }
      
      public function get boxTypes() : Array
      {
         return var_629;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1227;
      }
   }
}
