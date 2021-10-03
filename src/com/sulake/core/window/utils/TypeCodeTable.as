package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_523;
         param1["bitmap"] = const_665;
         param1["border"] = const_706;
         param1["border_notify"] = const_1222;
         param1["button"] = const_501;
         param1["button_thick"] = const_724;
         param1["button_icon"] = const_1307;
         param1["button_group_left"] = const_730;
         param1["button_group_center"] = const_538;
         param1["button_group_right"] = const_666;
         param1["canvas"] = const_700;
         param1["checkbox"] = const_622;
         param1["closebutton"] = const_956;
         param1["container"] = const_316;
         param1["container_button"] = const_630;
         param1["display_object_wrapper"] = const_600;
         param1["dropmenu"] = const_484;
         param1["dropmenu_item"] = const_433;
         param1["frame"] = const_306;
         param1["frame_notify"] = const_1399;
         param1["header"] = const_647;
         param1["icon"] = const_933;
         param1["itemgrid"] = const_1035;
         param1["itemgrid_horizontal"] = const_424;
         param1["itemgrid_vertical"] = const_592;
         param1["itemlist"] = const_1010;
         param1["itemlist_horizontal"] = const_355;
         param1["itemlist_vertical"] = const_356;
         param1["maximizebox"] = const_1246;
         param1["menu"] = WINDOW_TYPE_MENU;
         param1["menu_item"] = const_1274;
         param1["submenu"] = const_881;
         param1["minimizebox"] = const_1345;
         param1["notify"] = const_1312;
         param1["null"] = const_557;
         param1["password"] = const_594;
         param1["radiobutton"] = const_728;
         param1["region"] = const_413;
         param1["restorebox"] = const_1175;
         param1["scaler"] = const_680;
         param1["scaler_horizontal"] = const_1326;
         param1["scaler_vertical"] = const_1265;
         param1["scrollbar_horizontal"] = const_458;
         param1["scrollbar_vertical"] = const_596;
         param1["scrollbar_slider_button_up"] = const_939;
         param1["scrollbar_slider_button_down"] = const_862;
         param1["scrollbar_slider_button_left"] = const_894;
         param1["scrollbar_slider_button_right"] = const_874;
         param1["scrollbar_slider_bar_horizontal"] = const_957;
         param1["scrollbar_slider_bar_vertical"] = const_840;
         param1["scrollbar_slider_track_horizontal"] = const_929;
         param1["scrollbar_slider_track_vertical"] = const_993;
         param1["scrollable_itemlist"] = const_1206;
         param1["scrollable_itemlist_vertical"] = const_439;
         param1["scrollable_itemlist_horizontal"] = const_907;
         param1["selector"] = const_588;
         param1["selector_list"] = const_711;
         param1["submenu"] = const_881;
         param1["tab_button"] = const_636;
         param1["tab_container_button"] = const_832;
         param1["tab_context"] = WINDOW_TYPE_TAB_CONTEXT;
         param1["tab_content"] = const_818;
         param1["tab_selector"] = const_542;
         param1["text"] = const_679;
         param1["input"] = const_580;
         param1["toolbar"] = const_1214;
         param1["tooltip"] = const_330;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
