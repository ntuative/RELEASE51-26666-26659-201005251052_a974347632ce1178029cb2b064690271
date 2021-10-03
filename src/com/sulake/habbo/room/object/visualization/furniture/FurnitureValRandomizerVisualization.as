package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1076:int = 31;
      
      private static const const_1068:int = 32;
      
      private static const const_514:int = 30;
      
      private static const const_774:int = 20;
      
      private static const const_515:int = 10;
       
      
      private var var_626:Boolean = false;
      
      private var var_244:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_244 = new Array();
         super();
         super.setAnimation(const_514);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_626 = true;
            var_244 = new Array();
            var_244.push(const_1076);
            var_244.push(const_1068);
            return;
         }
         if(param1 > 0 && param1 <= const_515)
         {
            if(var_626)
            {
               var_626 = false;
               var_244 = new Array();
               if(_direction == 2)
               {
                  var_244.push(const_774 + 5 - param1);
                  var_244.push(const_515 + 5 - param1);
               }
               else
               {
                  var_244.push(const_774 + param1);
                  var_244.push(const_515 + param1);
               }
               var_244.push(const_514);
               return;
            }
            super.setAnimation(const_514);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
