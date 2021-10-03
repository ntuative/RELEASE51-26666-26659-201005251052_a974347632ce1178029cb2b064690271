package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1740:int;
      
      private var var_403:Boolean;
      
      private var var_1741:Boolean;
      
      private var var_825:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1741 = param1.readBoolean();
         if(var_1741)
         {
            var_1740 = param1.readInteger();
            var_403 = param1.readBoolean();
         }
         else
         {
            var_825 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_825 != null)
         {
            var_825.dispose();
            var_825 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_1740;
      }
      
      public function get owner() : Boolean
      {
         return var_403;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_1741;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_825;
      }
   }
}
