package com.sulake.core.window.graphics.renderer
{
   import flash.geom.Rectangle;
   
   public class SkinLayoutEntity implements ISkinLayoutEntity
   {
      
      public static const const_269:uint = 1;
      
      public static const const_470:uint = 0;
      
      public static const const_955:uint = 8;
      
      public static const const_289:uint = 4;
      
      public static const const_399:uint = 2;
       
      
      private var var_391:uint;
      
      private var var_1834:uint;
      
      private var _color:uint;
      
      private var _name:String;
      
      private var var_1833:uint;
      
      private var var_100:Rectangle;
      
      private var var_657:Array;
      
      private var _id:uint;
      
      public function SkinLayoutEntity(param1:uint, param2:String, param3:Rectangle, param4:uint = 4.294967295E9, param5:uint = 100, param6:uint = 0, param7:uint = 0)
      {
         super();
         _id = param1;
         _name = param2;
         var_100 = param3;
         _color = param4;
         var_391 = param5;
         var_1834 = param6;
         var_1833 = param7;
         var_657 = new Array();
      }
      
      public function get scaleH() : uint
      {
         return var_1834;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get blend() : uint
      {
         return var_391;
      }
      
      public function get scaleV() : uint
      {
         return var_1833;
      }
      
      public function get tags() : Array
      {
         return var_657;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function dispose() : void
      {
         var_100 = null;
         var_657 = null;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get region() : Rectangle
      {
         return var_100;
      }
   }
}
