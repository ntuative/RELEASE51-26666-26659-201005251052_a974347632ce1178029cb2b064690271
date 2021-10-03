package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_400:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_650:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_741:String;
      
      private var var_162:int;
      
      private var var_208:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         var_162 = param2;
         var_208 = param3;
         var_741 = param4;
      }
      
      public function get objectId() : int
      {
         return var_162;
      }
      
      public function get text() : String
      {
         return var_208;
      }
      
      public function get colorHex() : String
      {
         return var_741;
      }
   }
}
