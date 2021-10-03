package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1653:Class;
      
      private var var_1652:Class;
      
      private var var_1654:String;
      
      private var var_1142:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1654 = param1;
         var_1652 = param2;
         var_1653 = param3;
         if(rest == null)
         {
            var_1142 = new Array();
         }
         else
         {
            var_1142 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1653;
      }
      
      public function get assetClass() : Class
      {
         return var_1652;
      }
      
      public function get mimeType() : String
      {
         return var_1654;
      }
      
      public function get fileTypes() : Array
      {
         return var_1142;
      }
   }
}
