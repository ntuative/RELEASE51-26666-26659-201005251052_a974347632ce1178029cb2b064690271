package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_1974:String;
      
      private var var_1236:String;
      
      private var var_1973:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_1973 = param1;
         var_1236 = param2;
         var_1974 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1973,var_1236,var_1974];
      }
      
      public function dispose() : void
      {
      }
   }
}
