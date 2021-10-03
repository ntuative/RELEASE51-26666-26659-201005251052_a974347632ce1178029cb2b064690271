package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1845:int;
      
      private var var_1844:Boolean;
      
      private var var_1842:int;
      
      private var var_1405:String;
      
      private var var_1847:Boolean = false;
      
      private var var_1841:int;
      
      private var var_460:int;
      
      private var var_1117:String;
      
      private var var_1496:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1174:int;
      
      private var var_1846:Boolean;
      
      private var var_1843:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1845 = param1;
         var_1117 = param2;
         _objId = param3;
         var_1174 = param4;
         var_1405 = param5;
         var_1844 = param6;
         var_1846 = param7;
         var_1841 = param8;
         var_1496 = param9;
         var_1842 = param10;
         var_460 = -1;
      }
      
      public function get songId() : int
      {
         return var_1842;
      }
      
      public function get iconCallbackId() : int
      {
         return var_460;
      }
      
      public function get expiryTime() : int
      {
         return var_1841;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_1843 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_1847 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_460 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1846;
      }
      
      public function get slotId() : String
      {
         return var_1496;
      }
      
      public function get classId() : int
      {
         return var_1174;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1844;
      }
      
      public function get stuffData() : String
      {
         return var_1405;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1845;
      }
      
      public function get isLocked() : Boolean
      {
         return var_1847;
      }
      
      public function get prevCallbackId() : int
      {
         return var_1843;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1117;
      }
   }
}
