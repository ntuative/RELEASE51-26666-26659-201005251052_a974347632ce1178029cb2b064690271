package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_300:String;
      
      private var var_2350:String;
      
      private var var_2353:int;
      
      private var var_2351:int;
      
      private var var_563:String;
      
      private var var_1318:String;
      
      private var _name:String;
      
      private var var_502:int;
      
      private var var_865:int;
      
      private var var_2352:int;
      
      private var _respectTotal:int;
      
      private var var_2354:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2351;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1318;
      }
      
      public function get customData() : String
      {
         return this.var_2350;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_502;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2353;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2354;
      }
      
      public function get figure() : String
      {
         return this.var_300;
      }
      
      public function get respectTotal() : int
      {
         return this._respectTotal;
      }
      
      public function get sex() : String
      {
         return this.var_563;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_300 = param1.readString();
         this.var_563 = param1.readString();
         this.var_2350 = param1.readString();
         this.var_1318 = param1.readString();
         this.var_2352 = param1.readInteger();
         this.var_2354 = param1.readString();
         this.var_2353 = param1.readInteger();
         this.var_2351 = param1.readInteger();
         this._respectTotal = param1.readInteger();
         this.var_865 = param1.readInteger();
         this.var_502 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2352;
      }
      
      public function get respectLeft() : int
      {
         return this.var_865;
      }
   }
}
