package com.sulake.habbo.room.events
{
   public class RoomEngineObjectEvent extends RoomEngineEvent
   {
      
      public static const const_284:String = "REOB_OBJECT_ADDED";
      
      public static const const_393:String = "REOE_ROOM_AD_FURNI_CLICK";
      
      public static const const_97:String = "REOR_REMOVE_DIMMER";
      
      public static const const_118:String = "REOE_WIDGET_REQUEST_CREDITFURNI";
      
      public static const const_205:String = "REOB_OBJECT_PLACED";
      
      public static const const_123:String = "REOE_WIDGET_REQUEST_STICKIE";
      
      public static const const_463:String = "REOE_ROOM_AD_FURNI_DOUBLE_CLICK";
      
      public static const const_121:String = "REOE_WIDGET_REQUEST_DIMMER";
      
      public static const ROOM_OBJECT_REMOVED:String = "REOE_OBJECT_REMOVED";
      
      public static const const_136:String = "REOR_REQUEST_CLOTHING_CHANGE";
      
      public static const const_115:String = "REOE_WIDGET_REQUEST_PLACEHOLDER";
      
      public static const const_128:String = "REOE_WIDGET_REQUEST_ECOTRONBOX";
      
      public static const const_419:String = "REOE_ROOM_AD_TOOLTIP_SHOW";
      
      public static const const_653:String = "REOE_OBJECT_SELECTED";
      
      public static const const_426:String = "REOE_OBJECT_DESELECTED";
      
      public static const const_446:String = "REOE_ROOM_AD_TOOLTIP_HIDE";
      
      public static const const_133:String = "REOE_WIDGET_REQUEST_PRESENT";
      
      public static const const_624:String = "REOB_OBJECT_REQUEST_MOVE";
      
      public static const const_114:String = "REOE_WIDGET_REQUEST_TROPHY";
       
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      private var var_162:int;
      
      private var _category:int;
      
      public function RoomEngineObjectEvent(param1:String, param2:int, param3:int, param4:int, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param2,param3,param6,param7);
         var_162 = param4;
         _category = param5;
      }
      
      public function get objectId() : int
      {
         return var_162;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
