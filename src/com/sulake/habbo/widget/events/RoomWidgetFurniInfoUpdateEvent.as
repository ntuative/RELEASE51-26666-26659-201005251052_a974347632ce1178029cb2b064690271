package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetFurniInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_721:String = "RWFIUE_FURNI";
       
      
      private var var_1191:Boolean = false;
      
      private var _id:int = 0;
      
      private var var_1308:int = -1;
      
      private var var_1188:Boolean = false;
      
      private var var_1758:Boolean = false;
      
      private var _category:int = 0;
      
      private var var_2092:Boolean = false;
      
      private var var_2091:Boolean = false;
      
      private var _name:String = "";
      
      private var _image:BitmapData = null;
      
      private var var_1283:String = "";
      
      public function RoomWidgetFurniInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set isRoomController(param1:Boolean) : void
      {
         var_1191 = param1;
      }
      
      public function get description() : String
      {
         return var_1283;
      }
      
      public function set isStickie(param1:Boolean) : void
      {
         var_2092 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set isWallItem(param1:Boolean) : void
      {
         var_2091 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get isAnyRoomController() : Boolean
      {
         return var_1758;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get isWallItem() : Boolean
      {
         return var_2091;
      }
      
      public function get isRoomController() : Boolean
      {
         return var_1191;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function set expiration(param1:int) : void
      {
         var_1308 = param1;
      }
      
      public function get isStickie() : Boolean
      {
         return var_2092;
      }
      
      public function get expiration() : int
      {
         return var_1308;
      }
      
      public function set method_1(param1:Boolean) : void
      {
         var_1188 = param1;
      }
      
      public function get method_1() : Boolean
      {
         return var_1188;
      }
      
      public function set isAnyRoomController(param1:Boolean) : void
      {
         var_1758 = param1;
      }
      
      public function set id(param1:int) : void
      {
         _id = param1;
      }
      
      public function set category(param1:int) : void
      {
         _category = param1;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function set description(param1:String) : void
      {
         var_1283 = param1;
      }
   }
}
