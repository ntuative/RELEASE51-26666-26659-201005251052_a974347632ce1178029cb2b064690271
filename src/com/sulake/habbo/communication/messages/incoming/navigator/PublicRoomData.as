package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1777:int;
      
      private var var_1825:String;
      
      private var var_1690:int;
      
      private var _disposed:Boolean;
      
      private var var_1824:int;
      
      private var var_1757:String;
      
      private var var_1150:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1757 = param1.readString();
         var_1777 = param1.readInteger();
         var_1690 = param1.readInteger();
         var_1825 = param1.readString();
         var_1824 = param1.readInteger();
         var_1150 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1824;
      }
      
      public function get worldId() : int
      {
         return var_1690;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_1757;
      }
      
      public function get unitPort() : int
      {
         return var_1777;
      }
      
      public function get castLibs() : String
      {
         return var_1825;
      }
      
      public function get nodeId() : int
      {
         return var_1150;
      }
   }
}
