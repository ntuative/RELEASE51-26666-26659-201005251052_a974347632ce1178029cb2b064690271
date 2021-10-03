package com.sulake.habbo.avatar.geometry
{
   public class Node3D
   {
       
      
      private var var_1205:Vector3D;
      
      private var var_642:Vector3D;
      
      public function Node3D(param1:Number, param2:Number, param3:Number)
      {
         var_1205 = new Vector3D();
         super();
         var_642 = new Vector3D(param1,param2,param3);
      }
      
      public function get transformedLocation() : Vector3D
      {
         return var_1205;
      }
      
      public function get location() : Vector3D
      {
         return var_642;
      }
      
      public function applyTransform(param1:Matrix4x4) : void
      {
         var_1205 = param1.vectorMultiplication(var_642);
      }
   }
}
