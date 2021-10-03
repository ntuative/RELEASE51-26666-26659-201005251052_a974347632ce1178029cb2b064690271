package com.sulake.habbo.session.events
{
   import flash.events.Event;
   
   public class HabboSessionFigureUpdatedEvent extends Event
   {
      
      public static const const_698:String = "HABBO_SESSION_FIGURE_UPDATE";
       
      
      private var var_589:String;
      
      private var var_300:String;
      
      private var _userId:int;
      
      public function HabboSessionFigureUpdatedEvent(param1:int, param2:String, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(const_698,param4,param5);
         _userId = param1;
         var_300 = param2;
         var_589 = param3;
      }
      
      public function get gender() : String
      {
         return var_589;
      }
      
      public function get figure() : String
      {
         return var_300;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
