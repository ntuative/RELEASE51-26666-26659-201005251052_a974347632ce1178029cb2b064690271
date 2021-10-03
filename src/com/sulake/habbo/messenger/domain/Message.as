package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_605:int = 2;
      
      public static const const_838:int = 6;
      
      public static const const_573:int = 1;
      
      public static const const_677:int = 3;
      
      public static const const_860:int = 4;
      
      public static const const_656:int = 5;
       
      
      private var var_1884:String;
      
      private var var_1084:int;
      
      private var var_1885:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1084 = param2;
         var_1885 = param3;
         var_1884 = param4;
      }
      
      public function get time() : String
      {
         return var_1884;
      }
      
      public function get senderId() : int
      {
         return var_1084;
      }
      
      public function get messageText() : String
      {
         return var_1885;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
