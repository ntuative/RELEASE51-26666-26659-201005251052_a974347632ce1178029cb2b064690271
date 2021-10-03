package com.sulake.habbo.friendlist
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.friendlist.events.HabboFriendListTrackingEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.utils.Dictionary;
   
   public class FriendListView
   {
      
      private static const const_1462:String = "noconvinfo";
      
      private static const const_1461:String = "messageinput";
       
      
      private var var_1556:int = -1;
      
      private var var_896:IWindowContainer;
      
      private var _friendList:HabboFriendList;
      
      private var var_1557:int = -1;
      
      private var var_1305:ITextWindow;
      
      private var var_1304:FriendListTabsView;
      
      private var var_14:IFrameWindow;
      
      private var var_288:IWindowContainer;
      
      private var var_2080:Boolean;
      
      public function FriendListView(param1:HabboFriendList)
      {
         super();
         _friendList = param1;
         var_1304 = new FriendListTabsView(_friendList);
      }
      
      private function prepare() : void
      {
         var_14 = IFrameWindow(_friendList.getXmlWindow("main_window"));
         var_14.findChildByTag("close").procedure = onWindowClose;
         var_896 = IWindowContainer(var_14.content.findChildByName("main_content"));
         var_288 = IWindowContainer(var_14.content.findChildByName("footer"));
         var_1304.prepare(var_896);
         var_14.procedure = onWindow;
         var_14.content.setParamFlag(HabboWindowParam.const_973,false);
         var_14.content.setParamFlag(HabboWindowParam.const_1400,true);
         var_14.header.setParamFlag(HabboWindowParam.const_726,false);
         var_14.header.setParamFlag(HabboWindowParam.const_1008,true);
         var_14.content.setParamFlag(HabboWindowParam.const_726,false);
         var_14.content.setParamFlag(HabboWindowParam.const_1008,true);
         var_14.findChildByName("open_edit_ctgs_but").procedure = onEditCategoriesButtonClick;
         var_1305 = ITextWindow(var_14.findChildByName("info_text"));
         var_1305.text = "";
         _friendList.refreshButton(var_14,"open_edit_ctgs",true,null,0);
         var_14.title.color = 4294623744;
         var_14.title.textColor = 4287851525;
         refresh("prepare");
         var_14.height = 350;
         var_14.width = 230;
      }
      
      private function onWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Close window");
         var_14.visible = false;
         _friendList.trackFriendListEvent(HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_CLOSED);
      }
      
      public function showInfo(param1:WindowEvent, param2:String) : void
      {
         var _loc3_:WindowMouseEvent = param1 as WindowMouseEvent;
         if(_loc3_ == null)
         {
            return;
         }
         if(_loc3_.type == WindowMouseEvent.const_33)
         {
            var_1305.text = "";
         }
         else if(_loc3_.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            var_1305.text = param2;
         }
      }
      
      public function openFriendList() : void
      {
         if(var_14 == null)
         {
            prepare();
            _friendList.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_51,HabboToolbarIconEnum.FRIENDLIST,var_14));
         }
         else
         {
            var_14.visible = true;
            var_14.activate();
         }
      }
      
      private function getTitleBar() : IWindowContainer
      {
         return var_14.findChildByName("titlebar") as IWindowContainer;
      }
      
      public function get tabsView() : FriendListTabsView
      {
         return var_1304;
      }
      
      private function refreshWindowSize() : void
      {
         this.var_2080 = true;
         var_288.visible = false;
         var_288.y = Util.getLowestPoint(var_14.content);
         var_288.width = _friendList.tabs.windowWidth;
         var_288.visible = true;
         var_14.content.height = Util.getLowestPoint(var_14.content);
         var_14.content.width = _friendList.tabs.windowWidth - 10;
         var_14.header.width = _friendList.tabs.windowWidth - 10;
         var_14.height = var_14.content.height + 30;
         var_14.width = _friendList.tabs.windowWidth;
         this.var_2080 = false;
         var_14.scaler.setParamFlag(HabboWindowParam.const_532,false);
         var_14.scaler.setParamFlag(HabboWindowParam.const_934,this._friendList.tabs.findSelectedTab() != null);
         var_14.scaler.setParamFlag(HabboWindowParam.const_726,false);
         var_14.scaler.setParamFlag(HabboWindowParam.const_973,false);
         var_14.scaler.x = 0 - var_14.scaler.width;
         var_14.scaler.y = 0 - var_14.scaler.height;
         var_1557 = var_14.height;
         var_1556 = var_14.width;
         Logger.log("RESIZED: " + _friendList.tabs.windowWidth);
      }
      
      public function isFriendListOpen() : Boolean
      {
         return var_14 != null && false;
      }
      
      public function refresh(param1:String) : void
      {
         if(this.var_14 == null)
         {
            return;
         }
         var_1304.refresh(param1);
         refreshWindowSize();
      }
      
      public function get mainWindow() : IWindowContainer
      {
         return var_14;
      }
      
      private function onWindow(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_48 || param2 != var_14)
         {
            return;
         }
         if(this.var_2080)
         {
            return;
         }
         var _loc3_:int = var_1557 == -1 ? 0 : int(0 - var_1557);
         var _loc4_:int = var_1556 == -1 ? 0 : int(0 - var_1556);
         _friendList.tabs.tabContentHeight = Math.max(100,_friendList.tabs.tabContentHeight + _loc3_);
         _friendList.tabs.windowWidth = Math.max(147,_friendList.tabs.windowWidth + _loc4_);
         refresh("resize: " + _loc3_);
      }
      
      private function onEditCategoriesButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         _friendList.view.showInfo(param1,"${friendlist.tip.preferences}");
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Edit categories clicked");
         var _loc3_:WindowMouseEvent = param1 as WindowMouseEvent;
         _friendList.openHabboWebPage("link.format.friendlist.pref",new Dictionary(),_loc3_.stageX,_loc3_.stageY);
      }
      
      public function close() : void
      {
         if(this.var_14 != null)
         {
            this.var_14.visible = false;
         }
      }
   }
}
