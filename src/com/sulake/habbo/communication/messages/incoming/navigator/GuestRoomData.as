package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1804:int;
      
      private var var_2228:String;
      
      private var var_2231:int;
      
      private var var_2229:int;
      
      private var var_738:Boolean;
      
      private var var_2122:Boolean;
      
      private var var_402:int;
      
      private var var_1283:String;
      
      private var var_2024:int;
      
      private var var_1263:int;
      
      private var _ownerName:String;
      
      private var var_773:String;
      
      private var var_2230:int;
      
      private var var_2227:RoomThumbnailData;
      
      private var var_2023:Boolean;
      
      private var var_657:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_657 = new Array();
         super();
         var_402 = param1.readInteger();
         var_738 = param1.readBoolean();
         var_773 = param1.readString();
         _ownerName = param1.readString();
         var_2024 = param1.readInteger();
         var_1804 = param1.readInteger();
         var_2230 = param1.readInteger();
         var_1283 = param1.readString();
         var_2231 = param1.readInteger();
         var_2023 = param1.readBoolean();
         var_2229 = param1.readInteger();
         var_1263 = param1.readInteger();
         var_2228 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_657.push(_loc4_);
            _loc3_++;
         }
         var_2227 = new RoomThumbnailData(param1);
         var_2122 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_2230;
      }
      
      public function get roomName() : String
      {
         return var_773;
      }
      
      public function get userCount() : int
      {
         return var_1804;
      }
      
      public function get score() : int
      {
         return var_2229;
      }
      
      public function get eventCreationTime() : String
      {
         return var_2228;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_2023;
      }
      
      public function get tags() : Array
      {
         return var_657;
      }
      
      public function get allowPets() : Boolean
      {
         return var_2122;
      }
      
      public function get event() : Boolean
      {
         return var_738;
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
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1263;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_2231;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_2227;
      }
      
      public function get doorMode() : int
      {
         return var_2024;
      }
      
      public function get flatId() : int
      {
         return var_402;
      }
      
      public function get description() : String
      {
         return var_1283;
      }
   }
}
