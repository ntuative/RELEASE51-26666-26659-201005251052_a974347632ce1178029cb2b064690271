package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2256:Number;
      
      private var var_642:Number = 0;
      
      private var var_2255:Number;
      
      private var var_643:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_2256 = param1;
         var_2255 = param2;
      }
      
      public function update() : void
      {
         var_643 += var_2255;
         var_642 += var_643;
         if(var_642 > 0)
         {
            var_642 = 0;
            var_643 = var_2256 * -1 * var_643;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_643 = param1;
         var_642 = 0;
      }
      
      public function get location() : Number
      {
         return var_642;
      }
   }
}
