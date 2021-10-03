package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_86:Number = 0;
      
      private var _data:String = "";
      
      private var var_1549:int = 0;
      
      private var var_34:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_2128:Boolean = false;
      
      private var var_2420:String = "";
      
      private var _id:int = 0;
      
      private var var_201:Boolean = false;
      
      private var var_229:String = "";
      
      private var var_2130:int = 0;
      
      private var var_2129:int = 0;
      
      private var var_1922:int = 0;
      
      private var var_1923:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_2128 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_201)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_2128;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_201)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_229;
      }
      
      public function get state() : int
      {
         return var_34;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_201)
         {
            var_1922 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_201)
         {
            var_2130 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_201)
         {
            var_2129 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_201)
         {
            var_229 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_201)
         {
            var_1923 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_201)
         {
            var_34 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1922;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_201)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_2130;
      }
      
      public function get wallY() : Number
      {
         return var_2129;
      }
      
      public function get localY() : Number
      {
         return var_1923;
      }
      
      public function setReadOnly() : void
      {
         var_201 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_86;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_201)
         {
            var_86 = param1;
         }
      }
   }
}
