package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1570:String;
      
      private var var_654:String;
      
      private var var_1568:String;
      
      private var var_1569:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1569 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1570 = _loc5_[0];
         var_1568 = _loc5_[1];
         _name = param2;
         var_654 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1570;
      }
      
      public function get languageCode() : String
      {
         return var_1569;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_654;
      }
      
      public function get encoding() : String
      {
         return var_1568;
      }
      
      public function get id() : String
      {
         return var_1569 + "_" + var_1570 + "." + var_1568;
      }
   }
}
