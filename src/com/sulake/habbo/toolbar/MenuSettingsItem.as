package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1647:Array;
      
      private var var_1649:String;
      
      private var var_1650:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1649 = param1;
         var_1647 = param2;
         var_1650 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1649;
      }
      
      public function get yieldList() : Array
      {
         return var_1647;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1650;
      }
   }
}
