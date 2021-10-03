package com.sulake.habbo.widget.events
{
   public class RoomWidgetUpdateEffectsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_644:String = "RWUEUE_UPDATE_EFFECTS";
       
      
      private var var_273:Array;
      
      public function RoomWidgetUpdateEffectsUpdateEvent(param1:Array = null, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_644,param2,param3);
         var_273 = param1;
      }
      
      public function get effects() : Array
      {
         return var_273;
      }
   }
}
