package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_452:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_417:int = 0;
      
      public static const const_1009:int = 2;
      
      public static const const_1021:int = 1;
      
      public static const const_576:Boolean = false;
      
      public static const const_746:String = "";
      
      public static const const_436:int = 0;
      
      public static const const_498:int = 0;
      
      public static const const_414:int = 0;
       
      
      private var var_2210:int = 0;
      
      private var var_1801:String = "";
      
      private var var_1481:int = 0;
      
      private var var_2211:int = 0;
      
      private var var_2208:Number = 0;
      
      private var var_2040:int = 255;
      
      private var var_2209:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_2210;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1481 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_2208;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_2211 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_2210 = param1;
      }
      
      public function get tag() : String
      {
         return var_1801;
      }
      
      public function get alpha() : int
      {
         return var_2040;
      }
      
      public function get ink() : int
      {
         return var_1481;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_2208 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_2211;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_2209 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_2209;
      }
      
      public function set tag(param1:String) : void
      {
         var_1801 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_2040 = param1;
      }
   }
}
