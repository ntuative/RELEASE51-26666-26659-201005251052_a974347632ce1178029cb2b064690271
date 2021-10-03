package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_300:String;
      
      private var var_1319:String;
      
      private var var_1320:String;
      
      private var var_1263:int;
      
      private var var_589:int;
      
      private var var_1318:String;
      
      private var _name:String;
      
      private var var_1299:Boolean;
      
      private var var_706:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_589 = param1.readInteger();
         this.var_706 = param1.readBoolean();
         this.var_1299 = param1.readBoolean();
         this.var_300 = param1.readString();
         this.var_1263 = param1.readInteger();
         this.var_1320 = param1.readString();
         this.var_1319 = param1.readString();
         this.var_1318 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_589;
      }
      
      public function get realName() : String
      {
         return var_1318;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1320;
      }
      
      public function get categoryId() : int
      {
         return var_1263;
      }
      
      public function get online() : Boolean
      {
         return var_706;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1299;
      }
      
      public function get lastAccess() : String
      {
         return var_1319;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_300;
      }
   }
}
