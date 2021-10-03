package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_987:String = "inventory_badges";
      
      public static const const_1231:String = "inventory_clothes";
      
      public static const const_1228:String = "inventory_furniture";
      
      public static const const_519:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_998:String = "inventory_effects";
       
      
      private var var_2225:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_519);
         var_2225 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_2225;
      }
   }
}
