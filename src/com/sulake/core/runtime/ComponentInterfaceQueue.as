package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1383:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_949:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1383 = param1;
         var_949 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_949;
      }
      
      public function get identifier() : IID
      {
         return var_1383;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1383 = null;
            while(false)
            {
               var_949.pop();
            }
            var_949 = null;
         }
      }
   }
}
