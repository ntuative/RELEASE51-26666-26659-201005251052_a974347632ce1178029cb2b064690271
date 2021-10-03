package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1853:String;
      
      private var var_402:int;
      
      private var var_1854:String;
      
      private var var_1856:String;
      
      private var var_1851:int;
      
      private var var_1855:String;
      
      private var var_1852:int;
      
      private var var_657:Array;
      
      private var var_1078:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_657 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1078 = false;
            return;
         }
         this.var_1078 = true;
         var_1851 = int(_loc2_);
         var_1854 = param1.readString();
         var_402 = int(param1.readString());
         var_1852 = param1.readInteger();
         var_1853 = param1.readString();
         var_1856 = param1.readString();
         var_1855 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_657.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_1852;
      }
      
      public function get eventName() : String
      {
         return var_1853;
      }
      
      public function get eventDescription() : String
      {
         return var_1856;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_1854;
      }
      
      public function get tags() : Array
      {
         return var_657;
      }
      
      public function get creationTime() : String
      {
         return var_1855;
      }
      
      public function get exists() : Boolean
      {
         return var_1078;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_1851;
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
         this.var_657 = null;
      }
      
      public function get flatId() : int
      {
         return var_402;
      }
   }
}
