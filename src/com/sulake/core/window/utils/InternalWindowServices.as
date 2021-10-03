package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_121:DisplayObject;
      
      private var var_2359:uint;
      
      private var var_922:IWindowToolTipAgentService;
      
      private var var_921:IWindowMouseScalingService;
      
      private var var_240:IWindowContext;
      
      private var var_920:IWindowFocusManagerService;
      
      private var var_918:IWindowMouseListenerService;
      
      private var var_919:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2359 = 0;
         var_121 = param2;
         var_240 = param1;
         var_919 = new WindowMouseDragger(param2);
         var_921 = new WindowMouseScaler(param2);
         var_918 = new WindowMouseListener(param2);
         var_920 = new FocusManager(param2);
         var_922 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_921;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_920;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_922;
      }
      
      public function dispose() : void
      {
         if(var_919 != null)
         {
            var_919.dispose();
            var_919 = null;
         }
         if(var_921 != null)
         {
            var_921.dispose();
            var_921 = null;
         }
         if(var_918 != null)
         {
            var_918.dispose();
            var_918 = null;
         }
         if(var_920 != null)
         {
            var_920.dispose();
            var_920 = null;
         }
         if(var_922 != null)
         {
            var_922.dispose();
            var_922 = null;
         }
         var_240 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_918;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_919;
      }
   }
}
