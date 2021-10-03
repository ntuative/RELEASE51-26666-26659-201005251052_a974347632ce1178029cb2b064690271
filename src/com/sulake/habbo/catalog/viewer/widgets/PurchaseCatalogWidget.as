package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_2284:XML;
      
      private var var_1623:ITextWindow;
      
      private var var_1622:ITextWindow;
      
      private var var_2285:XML;
      
      private var var_952:IWindowContainer;
      
      private var var_2374:ITextWindow;
      
      private var var_2283:String = "";
      
      private var var_2423:IButtonWindow;
      
      private var var_2282:XML;
      
      private var var_1624:ITextWindow;
      
      private var var_2286:XML;
      
      private var var_951:IButtonWindow;
      
      private var var_78:Offer;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      private function method_9(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_335:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_2285) as IWindowContainer;
               break;
            case Offer.const_382:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_2286) as IWindowContainer;
               break;
            case Offer.const_379:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_2284) as IWindowContainer;
               break;
            case Offer.const_727:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_2282) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach...undefined");
         }
         if(_loc2_ != null)
         {
            if(var_952 != null)
            {
               _window.removeChild(var_952);
               var_952.dispose();
            }
            var_952 = _loc2_;
            _window.addChild(_loc2_);
            var_952.x = 0;
            var_952.y = 0;
         }
         var_1624 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         var_1622 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         var_1623 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         var_2374 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         var_951 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(var_951 != null)
         {
            var_951.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onPurchase);
            var_951.disable();
         }
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(var_78 != null)
         {
            Logger.log("Init Purchase: undefined undefined");
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(var_78,page,var_2283);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            var_2285 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            var_2286 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            var_2284 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         if(_loc4_ != null)
         {
            var_2282 = _loc4_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,onSelectProduct);
         events.addEventListener(WidgetEvent.const_858,onSetParameter);
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         var_2283 = param1.parameter;
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var_78 = param1.offer;
         method_9(var_78.priceType);
         if(var_1624 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(var_78.priceInCredits));
            var_1624.caption = "${catalog.purchase.price.credits}";
         }
         if(var_1622 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.pixels","pixels",String(var_78.priceInPixels));
            var_1622.caption = "${catalog.purchase.price.pixels}";
         }
         if(var_1623 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","credits",String(var_78.priceInCredits));
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","pixels",String(var_78.priceInPixels));
            var_1623.caption = "${catalog.purchase.price.credits+pixels}";
         }
         if(var_951 != null)
         {
            var_951.enable();
         }
      }
   }
}
