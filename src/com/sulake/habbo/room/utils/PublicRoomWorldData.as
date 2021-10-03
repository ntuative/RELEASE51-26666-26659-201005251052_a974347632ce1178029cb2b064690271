package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_1682:Number = 1.0;
      
      private var var_146:Number = 1.0;
      
      private var var_1864:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_1864 = param1;
         var_146 = param2;
         var_1682 = param3;
      }
      
      public function get scale() : Number
      {
         return var_146;
      }
      
      public function get heightScale() : Number
      {
         return var_1682;
      }
   }
}
