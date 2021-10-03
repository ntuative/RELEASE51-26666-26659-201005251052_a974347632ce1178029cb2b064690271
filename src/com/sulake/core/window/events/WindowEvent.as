package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_274:String = "WE_CHILD_RESIZED";
      
      public static const const_1319:String = "WE_CLOSE";
      
      public static const const_1193:String = "WE_DESTROY";
      
      public static const const_138:String = "WE_CHANGE";
      
      public static const const_1354:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1477:String = "WE_PARENT_RESIZE";
      
      public static const const_101:String = "WE_UPDATE";
      
      public static const const_1180:String = "WE_MAXIMIZE";
      
      public static const const_441:String = "WE_DESTROYED";
      
      public static const const_816:String = "WE_UNSELECT";
      
      public static const const_1323:String = "WE_MAXIMIZED";
      
      public static const const_1616:String = "WE_UNLOCKED";
      
      public static const const_461:String = "WE_CHILD_REMOVED";
      
      public static const const_185:String = "WE_OK";
      
      public static const const_48:String = "WE_RESIZED";
      
      public static const const_1225:String = "WE_ACTIVATE";
      
      public static const const_279:String = "WE_ENABLED";
      
      public static const const_485:String = "WE_CHILD_RELOCATED";
      
      public static const const_1332:String = "WE_CREATE";
      
      public static const const_673:String = "WE_SELECT";
      
      public static const const_173:String = "";
      
      public static const const_1490:String = "WE_LOCKED";
      
      public static const const_1516:String = "WE_PARENT_RELOCATE";
      
      public static const const_1605:String = "WE_CHILD_REMOVE";
      
      public static const const_1484:String = "WE_CHILD_RELOCATE";
      
      public static const const_1480:String = "WE_LOCK";
      
      public static const const_235:String = "WE_FOCUSED";
      
      public static const const_527:String = "WE_UNSELECTED";
      
      public static const const_854:String = "WE_DEACTIVATED";
      
      public static const const_1203:String = "WE_MINIMIZED";
      
      public static const const_1515:String = "WE_ARRANGED";
      
      public static const const_1517:String = "WE_UNLOCK";
      
      public static const const_1599:String = "WE_ATTACH";
      
      public static const const_1298:String = "WE_OPEN";
      
      public static const const_1194:String = "WE_RESTORE";
      
      public static const const_1586:String = "WE_PARENT_RELOCATED";
      
      public static const const_1302:String = "WE_RELOCATE";
      
      public static const const_1505:String = "WE_CHILD_RESIZE";
      
      public static const const_1667:String = "WE_ARRANGE";
      
      public static const const_1286:String = "WE_OPENED";
      
      public static const const_1216:String = "WE_CLOSED";
      
      public static const const_1676:String = "WE_DETACHED";
      
      public static const const_1617:String = "WE_UPDATED";
      
      public static const const_1392:String = "WE_UNFOCUSED";
      
      public static const const_376:String = "WE_RELOCATED";
      
      public static const const_1379:String = "WE_DEACTIVATE";
      
      public static const const_229:String = "WE_DISABLED";
      
      public static const const_667:String = "WE_CANCEL";
      
      public static const const_743:String = "WE_ENABLE";
      
      public static const const_1207:String = "WE_ACTIVATED";
      
      public static const const_1245:String = "WE_FOCUS";
      
      public static const const_1689:String = "WE_DETACH";
      
      public static const const_1169:String = "WE_RESTORED";
      
      public static const const_1374:String = "WE_UNFOCUS";
      
      public static const const_61:String = "WE_SELECTED";
      
      public static const const_1411:String = "WE_PARENT_RESIZED";
      
      public static const const_1361:String = "WE_CREATED";
      
      public static const const_1518:String = "WE_ATTACHED";
      
      public static const const_1195:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1638:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1418:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1638 = param3;
         var_1418 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1418;
      }
      
      public function get related() : IWindow
      {
         return var_1638;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1418 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
