package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_137:String = "RWPUE_VOTE_RESULT";
      
      public static const const_129:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1361:int;
      
      private var var_1014:String;
      
      private var var_688:Array;
      
      private var var_1102:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1014 = param2;
         var_1102 = param3;
         var_688 = param4;
         if(var_688 == null)
         {
            var_688 = [];
         }
         var_1361 = param5;
      }
      
      public function get votes() : Array
      {
         return var_688.slice();
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
   }
}
