package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_119:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1804:int;
      
      private var var_402:int;
      
      private var var_738:RoomData;
      
      private var var_1874:int;
      
      private var _ownerName:String;
      
      private var var_2236:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_402 = param1.readInteger();
         var_1804 = param1.readInteger();
         var_2236 = param1.readBoolean();
         var_1874 = param1.readInteger();
         _ownerName = param1.readString();
         var_119 = new RoomData(param1);
         var_738 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1804;
      }
      
      public function get event() : RoomData
      {
         return var_738;
      }
      
      public function get room() : RoomData
      {
         return var_119;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_119 != null)
         {
            var_119.dispose();
            var_119 = null;
         }
         if(var_738 != null)
         {
            var_738.dispose();
            var_738 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_402;
      }
      
      public function get ownerId() : int
      {
         return var_1874;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_2236;
      }
   }
}
