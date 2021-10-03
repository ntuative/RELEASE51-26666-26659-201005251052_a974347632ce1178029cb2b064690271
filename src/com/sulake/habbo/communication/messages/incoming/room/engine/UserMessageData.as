package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1182:String = "F";
      
      public static const const_926:String = "M";
       
      
      private var var_85:Number = 0;
      
      private var var_300:String = "";
      
      private var var_1981:int = 0;
      
      private var var_1982:String = "";
      
      private var var_1980:int = 0;
      
      private var var_1979:int = 0;
      
      private var var_1985:String = "";
      
      private var var_563:String = "";
      
      private var _id:int = 0;
      
      private var var_201:Boolean = false;
      
      private var var_229:int = 0;
      
      private var var_1984:String = "";
      
      private var _name:String = "";
      
      private var var_1983:int = 0;
      
      private var _y:Number = 0;
      
      private var var_86:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_86;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_229;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_201)
         {
            var_229 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_201)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_1981;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_201)
         {
            var_1980 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_1984;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_201)
         {
            var_1985 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_201)
         {
            var_1984 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_201)
         {
            var_1979 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_201)
         {
            var_300 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_201)
         {
            var_1981 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_201)
         {
            var_563 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1980;
      }
      
      public function get groupID() : String
      {
         return var_1985;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_201)
         {
            var_1983 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_201)
         {
            var_1982 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_201 = true;
      }
      
      public function get sex() : String
      {
         return var_563;
      }
      
      public function get figure() : String
      {
         return var_300;
      }
      
      public function get webID() : int
      {
         return var_1983;
      }
      
      public function get custom() : String
      {
         return var_1982;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_201)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_201)
         {
            var_86 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_201)
         {
            var_85 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_85;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1979;
      }
   }
}
