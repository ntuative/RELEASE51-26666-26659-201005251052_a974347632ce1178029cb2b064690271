package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_130;
         param1["bound_to_parent_rect"] = const_93;
         param1["child_window"] = const_845;
         param1["embedded_controller"] = const_339;
         param1["resize_to_accommodate_children"] = const_67;
         param1["input_event_processor"] = const_52;
         param1["internal_event_handling"] = const_736;
         param1["mouse_dragging_target"] = const_225;
         param1["mouse_dragging_trigger"] = const_314;
         param1["mouse_scaling_target"] = const_261;
         param1["mouse_scaling_trigger"] = const_431;
         param1["horizontal_mouse_scaling_trigger"] = const_243;
         param1["vertical_mouse_scaling_trigger"] = const_227;
         param1["observe_parent_input_events"] = const_947;
         param1["optimize_region_to_layout_size"] = const_500;
         param1["parent_window"] = const_992;
         param1["relative_horizontal_scale_center"] = const_183;
         param1["relative_horizontal_scale_fixed"] = const_122;
         param1["relative_horizontal_scale_move"] = const_347;
         param1["relative_horizontal_scale_strech"] = const_276;
         param1["relative_scale_center"] = const_834;
         param1["relative_scale_fixed"] = const_668;
         param1["relative_scale_move"] = const_880;
         param1["relative_scale_strech"] = const_918;
         param1["relative_vertical_scale_center"] = const_170;
         param1["relative_vertical_scale_fixed"] = const_125;
         param1["relative_vertical_scale_move"] = const_313;
         param1["relative_vertical_scale_strech"] = const_291;
         param1["on_resize_align_left"] = const_578;
         param1["on_resize_align_right"] = const_443;
         param1["on_resize_align_center"] = const_432;
         param1["on_resize_align_top"] = const_654;
         param1["on_resize_align_bottom"] = const_456;
         param1["on_resize_align_middle"] = const_483;
         param1["on_accommodate_align_left"] = const_1015;
         param1["on_accommodate_align_right"] = const_421;
         param1["on_accommodate_align_center"] = const_541;
         param1["on_accommodate_align_top"] = const_970;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_749;
         param1["route_input_events_to_parent"] = const_384;
         param1["use_parent_graphic_context"] = const_35;
         param1["draggable_with_mouse"] = const_984;
         param1["scalable_with_mouse"] = const_979;
         param1["reflect_horizontal_resize_to_parent"] = const_444;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_290;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
