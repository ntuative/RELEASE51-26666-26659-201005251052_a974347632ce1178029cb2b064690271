package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_137:String = "RSPE_VOTE_RESULT";
      
      public static const const_129:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1361:int = 0;
      
      private var var_1014:String = "";
      
      private var var_688:Array;
      
      private var var_1102:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_1102 = [];
         var_688 = [];
         super(param1,param2,param7,param8);
         var_1014 = param3;
         var_1102 = param4;
         var_688 = param5;
         if(var_688 == null)
         {
            var_688 = [];
         }
         var_1361 = param6;
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
