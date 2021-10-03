package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_575:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1869:int;
      
      private var var_1870:int;
      
      private var var_1868:Boolean;
      
      private var var_1072:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_575);
         var_1870 = param1;
         var_1869 = param2;
         _color = param3;
         var_1072 = param4;
         var_1868 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1869;
      }
      
      public function get presetNumber() : int
      {
         return var_1870;
      }
      
      public function get brightness() : int
      {
         return var_1072;
      }
      
      public function get apply() : Boolean
      {
         return var_1868;
      }
   }
}
