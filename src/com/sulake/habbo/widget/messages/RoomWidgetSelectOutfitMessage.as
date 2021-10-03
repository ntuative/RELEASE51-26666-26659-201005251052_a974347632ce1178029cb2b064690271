package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_878:String = "select_outfit";
       
      
      private var var_2081:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_878);
         var_2081 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_2081;
      }
   }
}
