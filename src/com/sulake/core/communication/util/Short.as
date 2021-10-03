package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_713:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_713 = new ByteArray();
         var_713.writeShort(param1);
         var_713.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_713.position = 0;
         if(false)
         {
            _loc1_ = var_713.readShort();
            var_713.position = 0;
         }
         return _loc1_;
      }
   }
}
