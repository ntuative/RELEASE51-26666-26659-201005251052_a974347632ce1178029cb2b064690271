package com.sulake.room.renderer.utils
{
   public class ObjectMouseData
   {
       
      
      private var var_1910:String = "";
      
      private var var_162:String = "";
      
      public function ObjectMouseData()
      {
         super();
      }
      
      public function set spriteTag(param1:String) : void
      {
         var_1910 = param1;
      }
      
      public function set objectId(param1:String) : void
      {
         var_162 = param1;
      }
      
      public function get spriteTag() : String
      {
         return var_1910;
      }
      
      public function get objectId() : String
      {
         return var_162;
      }
   }
}
