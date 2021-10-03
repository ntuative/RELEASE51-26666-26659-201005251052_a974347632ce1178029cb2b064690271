package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1100:int = 0;
      
      private var var_1381:int = 0;
      
      private var var_2216:String = "";
      
      private var var_1101:int = 0;
      
      private var var_2258:String = "";
      
      private var var_2260:int = 0;
      
      private var var_1601:String = "";
      
      private var var_2261:int = 0;
      
      private var var_2257:int = 0;
      
      private var var_2218:String = "";
      
      private var var_2259:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_2261 = param1;
         var_2218 = param2;
         var_1601 = param3;
         var_2216 = param4;
         var_2258 = param5;
         if(param6)
         {
            var_1381 = 1;
         }
         else
         {
            var_1381 = 0;
         }
         var_2260 = param7;
         var_2257 = param8;
         var_1101 = param9;
         var_2259 = param10;
         var_1100 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2261,var_2218,var_1601,var_2216,var_2258,var_1381,var_2260,var_2257,var_1101,var_2259,var_1100];
      }
      
      public function dispose() : void
      {
      }
   }
}
