package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_86:Number = 0;
      
      private var var_229:int = 0;
      
      private var var_1939:int = 0;
      
      private var var_1987:Number = 0;
      
      private var var_1988:Number = 0;
      
      private var var_1989:Number = 0;
      
      private var var_1986:Number = 0;
      
      private var var_1990:Boolean = false;
      
      private var var_85:Number = 0;
      
      private var _id:int = 0;
      
      private var var_189:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_189 = [];
         super();
         _id = param1;
         var_85 = param2;
         _y = param3;
         var_86 = param4;
         var_1986 = param5;
         var_229 = param6;
         var_1939 = param7;
         var_1987 = param8;
         var_1988 = param9;
         var_1989 = param10;
         var_1990 = param11;
         var_189 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_86;
      }
      
      public function get dir() : int
      {
         return var_229;
      }
      
      public function get localZ() : Number
      {
         return var_1986;
      }
      
      public function get isMoving() : Boolean
      {
         return var_1990;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1939;
      }
      
      public function get targetX() : Number
      {
         return var_1987;
      }
      
      public function get targetY() : Number
      {
         return var_1988;
      }
      
      public function get targetZ() : Number
      {
         return var_1989;
      }
      
      public function get x() : Number
      {
         return var_85;
      }
      
      public function get actions() : Array
      {
         return var_189.slice();
      }
   }
}
