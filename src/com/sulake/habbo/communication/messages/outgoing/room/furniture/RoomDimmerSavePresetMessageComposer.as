package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1869:int;
      
      private var var_1870:int;
      
      private var var_2167:Boolean;
      
      private var var_2168:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2166:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1870 = param1;
         var_1869 = param2;
         var_2168 = param3;
         var_2166 = param4;
         var_2167 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1870,var_1869,var_2168,var_2166,int(var_2167)];
      }
      
      public function dispose() : void
      {
      }
   }
}
