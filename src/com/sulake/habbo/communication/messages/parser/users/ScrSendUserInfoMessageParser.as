package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1253:int = 2;
      
      public static const const_1625:int = 1;
       
      
      private var var_2113:int;
      
      private var var_2107:int;
      
      private var var_2083:Boolean;
      
      private var var_2111:int;
      
      private var var_1198:String;
      
      private var var_2110:Boolean;
      
      private var var_2108:int;
      
      private var var_2109:int;
      
      private var var_2112:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2107;
      }
      
      public function get isVIP() : Boolean
      {
         return var_2083;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2109;
      }
      
      public function get memberPeriods() : int
      {
         return var_2111;
      }
      
      public function get productName() : String
      {
         return var_1198;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2110;
      }
      
      public function get responseType() : int
      {
         return var_2113;
      }
      
      public function get pastClubDays() : int
      {
         return var_2112;
      }
      
      public function get pastVipDays() : int
      {
         return var_2108;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1198 = param1.readString();
         var_2107 = param1.readInteger();
         var_2111 = param1.readInteger();
         var_2109 = param1.readInteger();
         var_2113 = param1.readInteger();
         var_2110 = param1.readBoolean();
         var_2083 = param1.readBoolean();
         var_2112 = param1.readInteger();
         var_2108 = param1.readInteger();
         return true;
      }
   }
}
