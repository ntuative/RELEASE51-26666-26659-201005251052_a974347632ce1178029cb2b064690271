package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_362:Boolean;
      
      private var var_1150:int;
      
      private var var_1478:String;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         var_1150 = param1.readInteger();
         var_1478 = param1.readString();
         var_362 = param1.readBoolean();
      }
      
      public function get visible() : Boolean
      {
         return var_362;
      }
      
      public function get nodeName() : String
      {
         return var_1478;
      }
      
      public function get nodeId() : int
      {
         return var_1150;
      }
   }
}
