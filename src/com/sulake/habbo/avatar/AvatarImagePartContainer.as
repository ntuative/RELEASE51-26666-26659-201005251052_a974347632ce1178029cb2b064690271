package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_1764:int;
      
      private var var_1766:String;
      
      private var var_1581:IActionDefinition;
      
      private var var_1763:Boolean;
      
      private var _color:IPartColor;
      
      private var var_1765:String;
      
      private var var_1762:String;
      
      private var var_1761:Boolean;
      
      private var var_1767:ColorTransform;
      
      private var var_1768:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_1766 = param1;
         var_1765 = param2;
         var_1764 = param3;
         _color = param4;
         _frames = param5;
         var_1581 = param6;
         var_1761 = param7;
         var_1768 = param8;
         var_1762 = param9;
         var_1763 = param10;
         var_1767 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1761;
      }
      
      public function get partType() : String
      {
         return var_1765;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1768;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_1763;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_1764;
      }
      
      public function get flippedPartType() : String
      {
         return var_1762;
      }
      
      public function get bodyPartId() : String
      {
         return var_1766;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1581;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_1767;
      }
   }
}
