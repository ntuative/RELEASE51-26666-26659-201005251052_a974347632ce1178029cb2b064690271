package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1150:int;
      
      private var var_1478:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1150 = param1;
         var_1478 = param2;
         Logger.log("READ NODE: " + var_1150 + ", " + var_1478);
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
