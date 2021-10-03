package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1361:int;
      
      private var var_1014:String;
      
      private var var_688:Array;
      
      private var var_1102:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_688.slice();
      }
      
      public function flush() : Boolean
      {
         var_1014 = "";
         var_1102 = [];
         var_688 = [];
         var_1361 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1361;
      }
      
      public function get question() : String
      {
         return var_1014;
      }
      
      public function get choices() : Array
      {
         return var_1102.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1014 = param1.readString();
         var_1102 = [];
         var_688 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_1102.push(param1.readString());
            var_688.push(param1.readInteger());
            _loc3_++;
         }
         var_1361 = param1.readInteger();
         return true;
      }
   }
}
