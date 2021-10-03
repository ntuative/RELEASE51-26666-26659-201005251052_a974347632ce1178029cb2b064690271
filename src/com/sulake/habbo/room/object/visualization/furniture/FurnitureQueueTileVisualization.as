package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1079:int = 1;
      
      private static const const_1068:int = 3;
      
      private static const const_1078:int = 2;
      
      private static const const_1080:int = 15;
       
      
      private var var_824:int;
      
      private var var_244:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_244 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1078)
         {
            var_244 = new Array();
            var_244.push(const_1079);
            var_824 = const_1080;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_824 > 0)
         {
            --var_824;
         }
         if(var_824 == 0)
         {
            if(false)
            {
               super.setAnimation(var_244.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
