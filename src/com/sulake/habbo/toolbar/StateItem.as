package com.sulake.habbo.toolbar
{
   public class StateItem
   {
       
      
      private var var_1368:Boolean;
      
      private var var_2147:String;
      
      private var _frames:XMLList;
      
      private var var_1077:String = "-1";
      
      private var var_656:String;
      
      private var var_185:int = 120;
      
      private var var_1334:String = "-1";
      
      private var var_1333:String;
      
      private var var_2146:Boolean;
      
      private var var_1577:String = "-1";
      
      private var _id:String;
      
      public function StateItem(param1:XML, param2:String)
      {
         super();
         _id = param1.@id;
         if(param1.attribute("loop").length() > 0)
         {
            var_1368 = Boolean(param1.@loop);
         }
         if(param1.attribute("bounce").length() > 0)
         {
            var_2146 = Boolean(param1.@loop);
         }
         if(param1.attribute("timer").length() > 0)
         {
            var_185 = int(param1.@timer);
         }
         if(param1.attribute("namebase").length() > 0)
         {
            var_1333 = param1.@namebase;
         }
         else
         {
            var_1333 = param2;
         }
         if(param1.attribute("state_over").length() > 0)
         {
            var_1077 = param1.@state_over;
         }
         if(param1.attribute("nextState").length() > 0)
         {
            var_1334 = param1.@nextState;
         }
         else
         {
            var_1334 = _id;
         }
         if(param1.attribute("state_default").length() > 0)
         {
            var_1577 = param1.@state_default;
         }
         if(param1.attribute("tooltip").length() > 0)
         {
            var_2147 = param1.@tooltip;
         }
         if(param1.attribute("background").length() > 0)
         {
            var_656 = param1.@background;
         }
         var _loc3_:XMLList = param1.elements("frame");
         if(_loc3_.length() > 0)
         {
            _frames = _loc3_;
         }
      }
      
      public function get hasStateOver() : Boolean
      {
         return var_1077 != "-1";
      }
      
      public function get bounce() : Boolean
      {
         return var_2146;
      }
      
      public function get defaultState() : String
      {
         return var_1577;
      }
      
      public function get hasDefaultState() : Boolean
      {
         return var_1577 != "-1";
      }
      
      public function get tooltip() : String
      {
         return var_2147;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function get timer() : int
      {
         return var_185;
      }
      
      public function get loop() : Boolean
      {
         return var_1368;
      }
      
      public function get nextState() : String
      {
         return var_1334;
      }
      
      public function get frames() : XMLList
      {
         return _frames;
      }
      
      public function get background() : String
      {
         return var_656;
      }
      
      public function get stateOver() : String
      {
         return var_1077;
      }
      
      public function get nameBase() : String
      {
         return var_1333;
      }
   }
}
