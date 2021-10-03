package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomSettingsFlatInfo;
   
   public class FlatInfoMessageParser implements IMessageParser
   {
       
      
      private var var_237:RoomSettingsFlatInfo;
      
      public function FlatInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_237 = null;
         return true;
      }
      
      public function get flatInfo() : RoomSettingsFlatInfo
      {
         return var_237;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_237 = new RoomSettingsFlatInfo();
         var_237.allowFurniMoving = param1.readInteger() == 1;
         var_237.doorMode = param1.readInteger();
         var_237.id = param1.readInteger();
         var_237.ownerName = param1.readString();
         var_237.type = param1.readString();
         var_237.name = param1.readString();
         var_237.description = param1.readString();
         var_237.showOwnerName = param1.readInteger() == 1;
         var_237.allowTrading = param1.readInteger() == 1;
         var_237.categoryAlertKey = param1.readInteger() == 1;
         return true;
      }
   }
}
