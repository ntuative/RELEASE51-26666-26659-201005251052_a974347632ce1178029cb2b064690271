package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_2171:int;
      
      private var var_2172:int;
      
      private var var_2174:int;
      
      private var _userName:String;
      
      private var var_2176:int;
      
      private var var_2175:int;
      
      private var var_2173:int;
      
      private var _userId:int;
      
      private var var_706:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_2175 = param1.readInteger();
         var_2176 = param1.readInteger();
         var_706 = param1.readBoolean();
         var_2174 = param1.readInteger();
         var_2172 = param1.readInteger();
         var_2171 = param1.readInteger();
         var_2173 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_2173;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_706;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_2176;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_2172;
      }
      
      public function get cautionCount() : int
      {
         return var_2171;
      }
      
      public function get cfhCount() : int
      {
         return var_2174;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_2175;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
