package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1482:String;
      
      private var var_1481:String;
      
      private var var_1089:String;
      
      private var var_391:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1482 = String(param1.@align);
         var_1089 = String(param1.@base);
         var_1481 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_391 = Number(_loc2_);
            if(var_391 > 1)
            {
               var_391 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1482;
      }
      
      public function get ink() : String
      {
         return var_1481;
      }
      
      public function get base() : String
      {
         return var_1089;
      }
      
      public function get isBlended() : Boolean
      {
         return var_391 != 1;
      }
      
      public function get blend() : Number
      {
         return var_391;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}
