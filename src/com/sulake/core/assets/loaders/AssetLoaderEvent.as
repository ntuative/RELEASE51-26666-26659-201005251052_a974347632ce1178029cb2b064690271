package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_995:String = "AssetLoaderEventUnload";
      
      public static const const_49:String = "AssetLoaderEventError";
      
      public static const const_848:String = "AssetLoaderEventOpen";
      
      public static const const_876:String = "AssetLoaderEventProgress";
      
      public static const const_962:String = "AssetLoaderEventStatus";
      
      public static const const_36:String = "AssetLoaderEventComplete";
       
      
      private var var_166:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         var_166 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return var_166;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,var_166);
      }
   }
}
