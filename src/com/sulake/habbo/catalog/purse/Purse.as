package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_2224:int = 0;
      
      private var var_1603:int = 0;
      
      private var var_2083:Boolean = false;
      
      private var var_1748:int = 0;
      
      private var var_2108:int = 0;
      
      private var var_1602:int = 0;
      
      private var var_2112:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get clubDays() : int
      {
         return var_1603;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1603 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_2083 = param1;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         var_2112 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return var_1603 > 0 || var_1602 > 0;
      }
      
      public function get credits() : int
      {
         return var_1748;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         var_2108 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1602;
      }
      
      public function get isVIP() : Boolean
      {
         return var_2083;
      }
      
      public function get pastClubDays() : int
      {
         return var_2112;
      }
      
      public function get pastVipDays() : int
      {
         return var_2108;
      }
      
      public function set pixels(param1:int) : void
      {
         var_2224 = param1;
      }
      
      public function get pixels() : int
      {
         return var_2224;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1602 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1748 = param1;
      }
   }
}
