package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1600:GarbageMonitor = null;
      
      private var var_1358:int = 0;
      
      private var var_1381:Boolean = false;
      
      private var var_2216:String = "";
      
      private var var_1601:String = "";
      
      private var var_367:Number = 0;
      
      private var var_1360:int = 10;
      
      private var var_2369:Array;
      
      private var var_662:int = 0;
      
      private var var_1357:int = 60;
      
      private var var_1100:int = 0;
      
      private var var_1101:int = 0;
      
      private var var_2258:String = "";
      
      private var var_2220:Number = 0;
      
      private var var_1356:int = 1000;
      
      private var var_2219:Boolean = true;
      
      private var var_2217:Number = 0.15;
      
      private var var_151:IHabboConfigurationManager = null;
      
      private var var_2218:String = "";
      
      private var var_1359:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2369 = [];
         super();
         var_1601 = Capabilities.version;
         var_2216 = Capabilities.os;
         var_1381 = Capabilities.isDebugger;
         var_2218 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1600 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1358 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1600.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1600.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_367;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1357 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1601;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_1101;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1356)
         {
            ++var_1100;
            _loc3_ = true;
         }
         else
         {
            ++var_662;
            if(var_662 <= 1)
            {
               var_367 = param1;
            }
            else
            {
               _loc4_ = Number(var_662);
               var_367 = var_367 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1358 > var_1357 * 1000 && var_1359 < var_1360)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_367);
            _loc5_ = true;
            if(var_2219 && var_1359 > 0)
            {
               _loc6_ = differenceInPercents(var_2220,var_367);
               if(_loc6_ < var_2217)
               {
                  _loc5_ = false;
               }
            }
            var_1358 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_2220 = var_367;
               if(sendReport())
               {
                  ++var_1359;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1360 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1356 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_2218,var_1601,var_2216,var_2258,var_1381,_loc4_,_loc3_,var_1101,var_367,var_1100);
            _connection.send(_loc1_);
            var_1101 = 0;
            var_367 = 0;
            var_662 = 0;
            var_1100 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_151 = param1;
         var_1357 = int(var_151.getKey("performancetest.interval","60"));
         var_1356 = int(var_151.getKey("performancetest.slowupdatelimit","1000"));
         var_1360 = int(var_151.getKey("performancetest.reportlimit","10"));
         var_2217 = Number(var_151.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_2219 = Boolean(int(var_151.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
