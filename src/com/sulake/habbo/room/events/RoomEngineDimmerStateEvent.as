package com.sulake.habbo.room.events
{
   public class RoomEngineDimmerStateEvent extends RoomEngineEvent
   {
      
      public static const const_62:String = "REDSE_ROOM_COLOR";
       
      
      private var var_1073:int;
      
      private var _color:uint;
      
      private var var_1072:int;
      
      private var var_1680:int;
      
      private var var_34:int;
      
      public function RoomEngineDimmerStateEvent(param1:int, param2:int, param3:int, param4:int, param5:int, param6:uint, param7:uint, param8:Boolean = false, param9:Boolean = false)
      {
         super(const_62,param1,param2,param8,param9);
         var_34 = param3;
         var_1680 = param4;
         var_1073 = param5;
         _color = param6;
         var_1072 = param7;
      }
      
      public function get brightness() : uint
      {
         return var_1072;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectId() : int
      {
         return var_1073;
      }
      
      public function get state() : int
      {
         return var_34;
      }
      
      public function get presetId() : int
      {
         return var_1680;
      }
   }
}
