package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_704:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1801:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_704);
         var_1801 = param1;
      }
      
      public function get tag() : String
      {
         return var_1801;
      }
   }
}
