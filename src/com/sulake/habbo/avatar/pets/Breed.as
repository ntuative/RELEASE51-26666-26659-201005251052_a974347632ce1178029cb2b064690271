package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_589:String;
      
      private var _id:int;
      
      private var var_2037:String = "";
      
      private var var_2036:int;
      
      private var var_2038:String;
      
      private var var_1761:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_2036 = parseInt(param1.@pattern);
         var_589 = String(param1.@gender);
         var_1761 = Boolean(parseInt(param1.@colorable));
         var_2037 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_2037;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1761;
      }
      
      public function get gender() : String
      {
         return var_589;
      }
      
      public function get patternId() : int
      {
         return var_2036;
      }
      
      public function get avatarFigureString() : String
      {
         return var_2038;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_2038 = param1;
      }
   }
}
