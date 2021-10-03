package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_358:Number = 0.5;
      
      private static const const_763:int = 3;
      
      private static const const_1056:Number = 1;
       
      
      private var var_1659:Boolean = false;
      
      private var var_1660:Boolean = false;
      
      private var var_975:int = 0;
      
      private var var_250:Vector3d = null;
      
      private var var_1662:int = 0;
      
      private var var_1663:int = 0;
      
      private var var_1661:Boolean = false;
      
      private var var_1658:int = -2;
      
      private var var_1657:Boolean = false;
      
      private var var_1664:int = 0;
      
      private var var_1656:int = -1;
      
      private var var_388:Vector3d = null;
      
      private var var_1665:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_1662;
      }
      
      public function get targetId() : int
      {
         return var_1656;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_1664 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_1662 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1659 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1656 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1660 = param1;
      }
      
      public function dispose() : void
      {
         var_388 = null;
         var_250 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_388 == null)
         {
            var_388 = new Vector3d();
         }
         var_388.assign(param1);
         var_975 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_1658;
      }
      
      public function get screenHt() : int
      {
         return var_1665;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1663 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_250;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1665 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_1664;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1659;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1660;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_388 != null && var_250 != null)
         {
            ++var_975;
            _loc2_ = Vector3d.dif(var_388,var_250);
            if(_loc2_.length <= const_358)
            {
               var_250 = var_388;
               var_388 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_358 * (const_763 + 1))
               {
                  _loc2_.mul(const_358);
               }
               else if(var_975 <= const_763)
               {
                  _loc2_.mul(const_358);
               }
               else
               {
                  _loc2_.mul(const_1056);
               }
               var_250 = Vector3d.sum(var_250,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1661 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1663;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1657 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1658 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_250 != null)
         {
            return;
         }
         var_250 = new Vector3d();
         var_250.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1661;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1657;
      }
   }
}
