package com.sulake.habbo.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_131:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_1326:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_131);
         var_1326 = param1;
      }
      
      public function get vote() : int
      {
         return var_1326;
      }
   }
}
