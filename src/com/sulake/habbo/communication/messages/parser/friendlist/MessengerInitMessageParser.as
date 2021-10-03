package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2327:int;
      
      private var var_2331:int;
      
      private var var_92:Array;
      
      private var var_228:Array;
      
      private var var_2332:int;
      
      private var var_2330:int;
      
      private var var_2329:int;
      
      private var var_2328:int;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_92 = new Array();
         this.var_228 = new Array();
         return true;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2327;
      }
      
      public function get friends() : Array
      {
         return this.var_228;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2332;
      }
      
      public function get categories() : Array
      {
         return this.var_92;
      }
      
      public function get friendRequestLimit() : int
      {
         return this.var_2331;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2328;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2328 = param1.readInteger();
         this.var_2332 = param1.readInteger();
         this.var_2327 = param1.readInteger();
         this.var_2329 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_92.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_228.push(new FriendData(param1));
            _loc4_++;
         }
         this.var_2331 = param1.readInteger();
         this.var_2330 = param1.readInteger();
         return true;
      }
      
      public function get evenMoreExtendedFriendLimit() : int
      {
         return this.var_2329;
      }
      
      public function get friendRequestCount() : int
      {
         return this.var_2330;
      }
   }
}
