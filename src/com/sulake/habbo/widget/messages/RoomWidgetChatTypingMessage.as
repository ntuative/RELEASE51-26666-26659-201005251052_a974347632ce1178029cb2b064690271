package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_734:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_513:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_734);
         var_513 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return var_513;
      }
   }
}
