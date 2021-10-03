package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2084:Boolean = false;
      
      private var var_2085:int = 0;
      
      private var var_1603:int = 0;
      
      private var var_2082:int = 0;
      
      private var var_2083:Boolean = false;
      
      private var var_1479:int = 0;
      
      private var var_1602:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1479 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_2085;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_2084;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_2084 = param1;
      }
      
      public function get isVIP() : Boolean
      {
         return var_2083;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_2085 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1603 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1479;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_2083 = param1;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_2082 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1603;
      }
      
      public function get pixelBalance() : int
      {
         return var_2082;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1602 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1602;
      }
   }
}
