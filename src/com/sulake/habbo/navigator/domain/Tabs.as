package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_553:int = 6;
      
      public static const const_223:int = 5;
      
      public static const const_529:int = 2;
      
      public static const const_326:int = 9;
      
      public static const const_343:int = 4;
      
      public static const const_271:int = 2;
      
      public static const const_582:int = 4;
      
      public static const const_212:int = 8;
      
      public static const const_616:int = 7;
      
      public static const const_267:int = 3;
      
      public static const const_354:int = 1;
      
      public static const const_238:int = 5;
      
      public static const const_492:int = 12;
      
      public static const const_309:int = 1;
      
      public static const const_522:int = 11;
      
      public static const const_591:int = 3;
      
      public static const const_1506:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_401:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_401 = new Array();
         var_401.push(new Tab(_navigator,const_354,const_492,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_428));
         var_401.push(new Tab(_navigator,const_271,const_309,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_428));
         var_401.push(new Tab(_navigator,const_343,const_522,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_909));
         var_401.push(new Tab(_navigator,const_267,const_223,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_428));
         var_401.push(new Tab(_navigator,const_238,const_212,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_536));
         setSelectedTab(const_354);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_401)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_401)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_401)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_343;
      }
      
      public function get tabs() : Array
      {
         return var_401;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
