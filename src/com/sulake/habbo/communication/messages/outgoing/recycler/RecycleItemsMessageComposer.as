package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_862:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_862 = new Array();
         var_862.push(param1.length);
         var_862 = var_862.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_862;
      }
   }
}
