package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1456:int = 10;
       
      
      private var var_1525:NavigatorSettingsMessageParser;
      
      private var var_1250:int;
      
      private var var_1908:int;
      
      private var var_1904:Boolean;
      
      private var var_1034:Array;
      
      private var var_861:Dictionary;
      
      private var var_1035:Array;
      
      private var var_2344:int;
      
      private var var_1907:int;
      
      private var var_1909:int;
      
      private var var_1905:int;
      
      private var var_598:PublicRoomShortData;
      
      private var var_411:RoomEventData;
      
      private var var_131:MsgWithRequestId;
      
      private var var_1903:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1906:Boolean;
      
      private var var_198:GuestRoomData;
      
      private var var_716:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_1034 = new Array();
         var_1035 = new Array();
         var_861 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1908;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1906;
      }
      
      public function startLoading() : void
      {
         this.var_716 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1906 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_411 != null)
         {
            var_411.dispose();
         }
         var_411 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_131 != null && var_131 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_131 != null && var_131 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_131 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_198;
      }
      
      public function get allCategories() : Array
      {
         return var_1034;
      }
      
      public function onRoomExit() : void
      {
         if(var_411 != null)
         {
            var_411.dispose();
            var_411 = null;
         }
         if(var_598 != null)
         {
            var_598.dispose();
            var_598 = null;
         }
         if(var_198 != null)
         {
            var_198.dispose();
            var_198 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_131 = param1;
         var_716 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1525;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_131 = param1;
         var_716 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_598 = null;
         var_198 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_598 = param1.publicSpace;
            var_411 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2344 = param1.limit;
         this.var_1250 = param1.favouriteRoomIds.length;
         this.var_861 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_861[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_131 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_598;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1904;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_131 = param1;
         var_716 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1909 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_198 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_716;
      }
      
      public function get visibleCategories() : Array
      {
         return var_1035;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_1034 = param1;
         var_1035 = new Array();
         for each(_loc2_ in var_1034)
         {
            if(_loc2_.visible)
            {
               var_1035.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_1907;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1905;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1525 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_131 == null)
         {
            return;
         }
         var_131.dispose();
         var_131 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_411;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_861[param1] = !!param2 ? "yes" : null;
         var_1250 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_131 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1909;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_131 != null && var_131 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1904 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1907 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1903 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_198 != null)
         {
            var_198.dispose();
         }
         var_198 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_198 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1525.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1250 >= var_2344;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1905 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1903;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_198 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1908 = param1;
      }
   }
}
