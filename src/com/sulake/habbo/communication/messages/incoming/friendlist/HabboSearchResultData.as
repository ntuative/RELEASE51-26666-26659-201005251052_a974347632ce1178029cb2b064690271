package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2363:Boolean;
      
      private var var_2364:int;
      
      private var var_2361:Boolean;
      
      private var var_1484:String;
      
      private var var_1318:String;
      
      private var var_1909:int;
      
      private var var_1828:String;
      
      private var var_2362:String;
      
      private var var_1827:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1909 = param1.readInteger();
         this.var_1484 = param1.readString();
         this.var_1828 = param1.readString();
         this.var_2363 = param1.readBoolean();
         this.var_2361 = param1.readBoolean();
         param1.readString();
         this.var_2364 = param1.readInteger();
         this.var_1827 = param1.readString();
         this.var_2362 = param1.readString();
         this.var_1318 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1318;
      }
      
      public function get avatarName() : String
      {
         return this.var_1484;
      }
      
      public function get avatarId() : int
      {
         return this.var_1909;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2363;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2362;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1827;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2361;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1828;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2364;
      }
   }
}
