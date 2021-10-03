package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_300:String = "";
      
      private var var_1982:String = "";
      
      private var var_1980:int = 0;
      
      private var var_1979:int = 0;
      
      private var _type:int = 0;
      
      private var var_1985:String = "";
      
      private var var_563:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_1983:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_1980 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_1985 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_300 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_563 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_1980;
      }
      
      public function set webID(param1:int) : void
      {
         var_1983 = param1;
      }
      
      public function get groupID() : String
      {
         return var_1985;
      }
      
      public function set custom(param1:String) : void
      {
         var_1982 = param1;
      }
      
      public function get figure() : String
      {
         return var_300;
      }
      
      public function get sex() : String
      {
         return var_563;
      }
      
      public function get custom() : String
      {
         return var_1982;
      }
      
      public function get webID() : int
      {
         return var_1983;
      }
      
      public function set xp(param1:int) : void
      {
         var_1979 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_1979;
      }
   }
}
