package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserNameChangedMessageParser implements IMessageParser
   {
       
      
      private var var_1393:String;
      
      private var var_1392:int;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var _id:int;
      
      public function UserNameChangedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1392 = param1.readInteger();
         _id = param1.readInteger();
         var_1393 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1392 = -1;
         _id = -1;
         var_1393 = "";
         return true;
      }
      
      public function get newName() : String
      {
         return var_1393;
      }
      
      public function get webId() : int
      {
         return var_1392;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get id() : int
      {
         return _id;
      }
   }
}
