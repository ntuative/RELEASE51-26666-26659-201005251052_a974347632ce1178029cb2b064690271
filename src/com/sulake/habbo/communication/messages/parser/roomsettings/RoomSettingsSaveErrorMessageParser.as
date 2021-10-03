package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1526:int = 9;
      
      public static const const_1541:int = 4;
      
      public static const const_1651:int = 1;
      
      public static const const_1188:int = 10;
      
      public static const const_1567:int = 2;
      
      public static const const_1256:int = 7;
      
      public static const const_1415:int = 11;
      
      public static const const_1590:int = 3;
      
      public static const const_1305:int = 8;
      
      public static const const_1306:int = 5;
      
      public static const const_1475:int = 6;
      
      public static const const_1388:int = 12;
       
      
      private var var_1911:String;
      
      private var _roomId:int;
      
      private var var_1247:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_1911;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1247 = param1.readInteger();
         var_1911 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1247;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
