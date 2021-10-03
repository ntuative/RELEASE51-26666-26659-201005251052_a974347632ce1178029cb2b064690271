package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1876:int;
      
      private var var_300:String;
      
      private var var_1695:int;
      
      private var var_1743:int;
      
      private var var_1873:int;
      
      private var var_2141:int;
      
      private var _nutrition:int;
      
      private var var_1306:int;
      
      private var var_2142:int;
      
      private var var_2140:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1874:int;
      
      private var var_2143:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1695;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_2141;
      }
      
      public function flush() : Boolean
      {
         var_1306 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_2142;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_2140;
      }
      
      public function get maxNutrition() : int
      {
         return var_2143;
      }
      
      public function get figure() : String
      {
         return var_300;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1743;
      }
      
      public function get petId() : int
      {
         return var_1306;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1306 = param1.readInteger();
         _name = param1.readString();
         var_1695 = param1.readInteger();
         var_2142 = param1.readInteger();
         var_1873 = param1.readInteger();
         var_2140 = param1.readInteger();
         _energy = param1.readInteger();
         var_2141 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_2143 = param1.readInteger();
         var_300 = param1.readString();
         var_1743 = param1.readInteger();
         var_1874 = param1.readInteger();
         var_1876 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1873;
      }
      
      public function get ownerId() : int
      {
         return var_1874;
      }
      
      public function get age() : int
      {
         return var_1876;
      }
   }
}
