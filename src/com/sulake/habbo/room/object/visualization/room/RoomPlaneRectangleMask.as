package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_1750:Number = 0.0;
      
      private var var_1752:Number = 0.0;
      
      private var var_1749:Number = 0.0;
      
      private var var_1751:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1752 = param1;
         var_1749 = param2;
         var_1750 = param3;
         var_1751 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1752;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1750;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1749;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1751;
      }
   }
}
