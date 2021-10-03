package com.sulake.habbo.window.utils
{
   class AlertDialogCaption implements ICaption
   {
       
      
      private var var_362:Boolean;
      
      private var var_208:String;
      
      private var var_1180:String;
      
      function AlertDialogCaption(param1:String, param2:String, param3:Boolean)
      {
         super();
         var_208 = param1;
         var_1180 = param2;
         var_362 = param3;
      }
      
      public function get toolTip() : String
      {
         return var_1180;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_362 = param1;
      }
      
      public function get text() : String
      {
         return var_208;
      }
      
      public function get visible() : Boolean
      {
         return var_362;
      }
      
      public function set toolTip(param1:String) : void
      {
         var_1180 = param1;
      }
      
      public function set text(param1:String) : void
      {
         var_208 = param1;
      }
   }
}
