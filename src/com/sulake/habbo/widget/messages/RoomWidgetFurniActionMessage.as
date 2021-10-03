package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_250:String = "RWFAM_MOVE";
      
      public static const const_690:String = "RWFUAM_ROTATE";
      
      public static const const_637:String = "RWFAM_PICKUP";
       
      
      private var var_1672:int = 0;
      
      private var var_2029:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1672 = param2;
         var_2029 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1672;
      }
      
      public function get furniCategory() : int
      {
         return var_2029;
      }
   }
}
