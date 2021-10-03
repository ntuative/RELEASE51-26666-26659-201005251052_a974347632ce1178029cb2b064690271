package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_642:RoomObjectLocationCacheItem = null;
      
      private var var_184:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         var_642 = new RoomObjectLocationCacheItem(param1);
         var_184 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return var_642;
      }
      
      public function dispose() : void
      {
         if(var_642 != null)
         {
            var_642.dispose();
            var_642 = null;
         }
         if(var_184 != null)
         {
            var_184.dispose();
            var_184 = null;
         }
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return var_184;
      }
   }
}
