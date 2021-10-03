package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_609:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
      
      public static const const_602:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_283:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
       
      
      private var var_1435:Point;
      
      private var var_1434:Rectangle;
      
      private var var_146:Number = 0.0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0.0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         var_1434 = param2;
         var_1435 = param3;
         var_146 = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(var_1434 != null)
         {
            return var_1434.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return var_146;
      }
      
      public function get positionDelta() : Point
      {
         if(var_1435 != null)
         {
            return var_1435.clone();
         }
         return null;
      }
   }
}
