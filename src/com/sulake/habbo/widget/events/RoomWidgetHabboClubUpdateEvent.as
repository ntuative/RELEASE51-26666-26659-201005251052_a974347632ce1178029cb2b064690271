package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_222:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2001:Boolean = false;
      
      private var var_1998:int = 0;
      
      private var var_1999:int = 0;
      
      private var var_1861:int;
      
      private var var_2000:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_222,param6,param7);
         var_2000 = param1;
         var_1999 = param2;
         var_1998 = param3;
         var_2001 = param4;
         var_1861 = param5;
      }
      
      public function get clubLevel() : int
      {
         return var_1861;
      }
      
      public function get pastPeriods() : int
      {
         return var_1998;
      }
      
      public function get periodsLeft() : int
      {
         return var_1999;
      }
      
      public function get daysLeft() : int
      {
         return var_2000;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_2001;
      }
   }
}
