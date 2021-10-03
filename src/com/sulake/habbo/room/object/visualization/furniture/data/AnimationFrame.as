package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_683:int = -1;
      
      public static const const_950:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_1713:int = -1;
      
      private var var_85:int = 0;
      
      private var var_1185:int = 1;
      
      private var var_822:int = 1;
      
      private var var_1714:Boolean = false;
      
      private var var_1712:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_85 = param2;
         _y = param3;
         var_1714 = param5;
         if(param4 < 0)
         {
            param4 = const_683;
         }
         var_822 = param4;
         var_1185 = param4;
         if(param6 >= 0)
         {
            var_1713 = param6;
            var_1712 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_822 > 0 && param1 > var_822)
         {
            param1 = var_822;
         }
         var_1185 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_822;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_1712;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_822 < 0)
         {
            return const_683;
         }
         return var_1185;
      }
      
      public function get activeSequence() : int
      {
         return var_1713;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_1714;
      }
      
      public function get x() : int
      {
         return var_85;
      }
   }
}
