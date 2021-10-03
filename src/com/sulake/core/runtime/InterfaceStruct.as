package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_408:uint;
      
      private var var_1025:IUnknown;
      
      private var var_1237:String;
      
      private var var_1024:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1024 = param1;
         var_1237 = getQualifiedClassName(var_1024);
         var_1025 = param2;
         var_408 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1024;
      }
      
      public function get disposed() : Boolean
      {
         return var_1025 == null;
      }
      
      public function get references() : uint
      {
         return var_408;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_408) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1025;
      }
      
      public function get iis() : String
      {
         return var_1237;
      }
      
      public function reserve() : uint
      {
         return ++var_408;
      }
      
      public function dispose() : void
      {
         var_1024 = null;
         var_1237 = null;
         var_1025 = null;
         var_408 = 0;
      }
   }
}
