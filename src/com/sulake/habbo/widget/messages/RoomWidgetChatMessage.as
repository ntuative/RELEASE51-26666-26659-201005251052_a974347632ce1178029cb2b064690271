package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_135:int = 0;
      
      public static const const_124:int = 1;
      
      public static const const_111:int = 2;
      
      public static const const_520:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1329:int = 0;
      
      private var var_2017:String = "";
      
      private var var_208:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_208 = param2;
         var_1329 = param3;
         var_2017 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_2017;
      }
      
      public function get chatType() : int
      {
         return var_1329;
      }
      
      public function get text() : String
      {
         return var_208;
      }
   }
}
