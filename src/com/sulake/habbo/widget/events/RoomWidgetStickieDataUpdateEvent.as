package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_528:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_208:String;
      
      private var var_741:String;
      
      private var var_1566:String;
      
      private var var_162:int = -1;
      
      private var var_29:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_162 = param2;
         var_1566 = param3;
         var_208 = param4;
         var_741 = param5;
         var_29 = param6;
      }
      
      public function get objectType() : String
      {
         return var_1566;
      }
      
      public function get colorHex() : String
      {
         return var_741;
      }
      
      public function get text() : String
      {
         return var_208;
      }
      
      public function get objectId() : int
      {
         return var_162;
      }
      
      public function get controller() : Boolean
      {
         return var_29;
      }
   }
}
