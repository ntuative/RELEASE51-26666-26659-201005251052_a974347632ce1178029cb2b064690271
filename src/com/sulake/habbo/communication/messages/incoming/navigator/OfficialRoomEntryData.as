package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1334:int = 4;
      
      public static const const_657:int = 3;
      
      public static const const_732:int = 2;
      
      public static const const_1038:int = 1;
       
      
      private var var_1798:String;
      
      private var _disposed:Boolean;
      
      private var var_1804:int;
      
      private var var_1799:Boolean;
      
      private var var_823:String;
      
      private var var_839:PublicRoomData;
      
      private var var_1803:int;
      
      private var _index:int;
      
      private var var_1802:String;
      
      private var _type:int;
      
      private var var_1801:String;
      
      private var var_840:GuestRoomData;
      
      private var var_1800:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_1798 = param1.readString();
         var_1800 = param1.readString();
         var_1799 = param1.readInteger() == 1;
         var_1802 = param1.readString();
         var_823 = param1.readString();
         var_1803 = param1.readInteger();
         var_1804 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_1038)
         {
            var_1801 = param1.readString();
         }
         else if(_type == const_657)
         {
            var_839 = new PublicRoomData(param1);
         }
         else if(_type == const_732)
         {
            var_840 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_1803;
      }
      
      public function get popupCaption() : String
      {
         return var_1798;
      }
      
      public function get userCount() : int
      {
         return var_1804;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1799;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1038)
         {
            return 0;
         }
         if(this.type == const_732)
         {
            return this.var_840.maxUserCount;
         }
         if(this.type == const_657)
         {
            return this.var_839.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1800;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_840 != null)
         {
            this.var_840.dispose();
            this.var_840 = null;
         }
         if(this.var_839 != null)
         {
            this.var_839.dispose();
            this.var_839 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_840;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_1802;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_839;
      }
      
      public function get picRef() : String
      {
         return var_823;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1801;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
