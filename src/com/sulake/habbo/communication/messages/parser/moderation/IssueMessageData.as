package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_152:int = 1;
      
      public static const const_1170:int = 3;
      
      public static const const_493:int = 2;
       
      
      private var var_1773:int;
      
      private var var_1777:int;
      
      private var var_1782:int;
      
      private var var_1690:int;
      
      private var var_34:int;
      
      private var var_402:int;
      
      private var var_1389:int;
      
      private var var_1772:int;
      
      private var var_1111:int;
      
      private var _roomResources:String;
      
      private var var_1779:int;
      
      private var var_1774:int;
      
      private var var_1781:String;
      
      private var var_1771:String;
      
      private var var_1776:int = 0;
      
      private var var_1380:String;
      
      private var _message:String;
      
      private var var_1780:int;
      
      private var var_1778:String;
      
      private var var_1263:int;
      
      private var var_773:String;
      
      private var var_1775:String;
      
      private var var_1474:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1111 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_1776 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_1774;
      }
      
      public function set roomName(param1:String) : void
      {
         var_773 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1779 = param1;
      }
      
      public function get state() : int
      {
         return var_34;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_773;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1690 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_34 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1777;
      }
      
      public function get priority() : int
      {
         return var_1773 + var_1776;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1772 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1771;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1474) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1263;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_1774 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1389;
      }
      
      public function set flatType(param1:String) : void
      {
         var_1781 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1779;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1690;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_1775 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1380 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1772;
      }
      
      public function set priority(param1:int) : void
      {
         var_1773 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1777 = param1;
      }
      
      public function get flatType() : String
      {
         return var_1781;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_1782 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1771 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1780 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1380;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1389 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_1782;
      }
      
      public function set flatId(param1:int) : void
      {
         var_402 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1263 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1474 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1780;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_1778 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1474;
      }
      
      public function get reportedUserId() : int
      {
         return var_1111;
      }
      
      public function get flatId() : int
      {
         return var_402;
      }
      
      public function get flatOwnerName() : String
      {
         return var_1775;
      }
      
      public function get reporterUserName() : String
      {
         return var_1778;
      }
   }
}
