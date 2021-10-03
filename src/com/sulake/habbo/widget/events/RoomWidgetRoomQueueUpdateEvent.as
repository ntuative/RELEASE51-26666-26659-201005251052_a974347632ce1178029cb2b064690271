package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_453:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_332:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_832:int;
      
      private var var_272:Boolean;
      
      private var var_1699:Boolean;
      
      private var var_1552:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_832 = param2;
         var_1699 = param3;
         var_272 = param4;
         var_1552 = param5;
      }
      
      public function get position() : int
      {
         return var_832;
      }
      
      public function get isActive() : Boolean
      {
         return var_272;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1552;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_1699;
      }
   }
}
