package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1287:String = "WN_CREATED";
      
      public static const const_1040:String = "WN_DISABLE";
      
      public static const const_927:String = "WN_DEACTIVATED";
      
      public static const const_971:String = "WN_OPENED";
      
      public static const const_889:String = "WN_CLOSED";
      
      public static const const_978:String = "WN_DESTROY";
      
      public static const const_1563:String = "WN_ARRANGED";
      
      public static const const_370:String = "WN_PARENT_RESIZED";
      
      public static const const_920:String = "WN_ENABLE";
      
      public static const const_982:String = "WN_RELOCATE";
      
      public static const const_871:String = "WN_FOCUS";
      
      public static const const_863:String = "WN_PARENT_RELOCATED";
      
      public static const const_398:String = "WN_PARAM_UPDATED";
      
      public static const const_550:String = "WN_PARENT_ACTIVATED";
      
      public static const const_191:String = "WN_RESIZED";
      
      public static const const_877:String = "WN_CLOSE";
      
      public static const const_826:String = "WN_PARENT_REMOVED";
      
      public static const const_259:String = "WN_CHILD_RELOCATED";
      
      public static const const_625:String = "WN_ENABLED";
      
      public static const const_266:String = "WN_CHILD_RESIZED";
      
      public static const const_1041:String = "WN_MINIMIZED";
      
      public static const const_562:String = "WN_DISABLED";
      
      public static const const_237:String = "WN_CHILD_ACTIVATED";
      
      public static const const_396:String = "WN_STATE_UPDATED";
      
      public static const const_702:String = "WN_UNSELECTED";
      
      public static const const_496:String = "WN_STYLE_UPDATED";
      
      public static const const_1550:String = "WN_UPDATE";
      
      public static const const_487:String = "WN_PARENT_ADDED";
      
      public static const const_589:String = "WN_RESIZE";
      
      public static const const_688:String = "WN_CHILD_REMOVED";
      
      public static const const_1547:String = "";
      
      public static const const_1027:String = "WN_RESTORED";
      
      public static const const_350:String = "WN_SELECTED";
      
      public static const const_944:String = "WN_MINIMIZE";
      
      public static const const_946:String = "WN_FOCUSED";
      
      public static const const_1201:String = "WN_LOCK";
      
      public static const const_331:String = "WN_CHILD_ADDED";
      
      public static const const_1019:String = "WN_UNFOCUSED";
      
      public static const const_392:String = "WN_RELOCATED";
      
      public static const const_901:String = "WN_DEACTIVATE";
      
      public static const const_1370:String = "WN_CRETAE";
      
      public static const const_896:String = "WN_RESTORE";
      
      public static const const_310:String = "WN_ACTVATED";
      
      public static const const_1167:String = "WN_LOCKED";
      
      public static const const_454:String = "WN_SELECT";
      
      public static const const_931:String = "WN_MAXIMIZE";
      
      public static const const_935:String = "WN_OPEN";
      
      public static const const_661:String = "WN_UNSELECT";
      
      public static const const_1687:String = "WN_ARRANGE";
      
      public static const const_1327:String = "WN_UNLOCKED";
      
      public static const const_1529:String = "WN_UPDATED";
      
      public static const const_1032:String = "WN_ACTIVATE";
      
      public static const const_1292:String = "WN_UNLOCK";
      
      public static const const_949:String = "WN_MAXIMIZED";
      
      public static const const_844:String = "WN_DESTROYED";
      
      public static const const_1012:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1638,cancelable);
      }
   }
}
