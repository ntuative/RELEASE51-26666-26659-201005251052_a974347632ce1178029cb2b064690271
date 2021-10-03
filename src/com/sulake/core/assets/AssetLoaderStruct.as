package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_702:IAssetLoader;
      
      private var var_1286:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1286 = param1;
         var_702 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_702;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_702 != null)
            {
               if(true)
               {
                  var_702.dispose();
                  var_702 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1286;
      }
   }
}
