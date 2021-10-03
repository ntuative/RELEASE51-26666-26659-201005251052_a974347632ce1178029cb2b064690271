package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1473:String;
      
      private var var_1838:int;
      
      private var var_1840:int;
      
      private var var_1837:int;
      
      private var var_1839:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1838 = param1.readInteger();
         var_1837 = param1.readInteger();
         var_1840 = param1.readInteger();
         var_1839 = param1.readString();
         var_1473 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1473;
      }
      
      public function get hour() : int
      {
         return var_1838;
      }
      
      public function get minute() : int
      {
         return var_1837;
      }
      
      public function get chatterName() : String
      {
         return var_1839;
      }
      
      public function get chatterId() : int
      {
         return var_1840;
      }
   }
}
