package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_980:SoundChannel = null;
      
      private var var_794:Boolean;
      
      private var var_979:Sound = null;
      
      private var var_736:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_979 = param1;
         var_979.addEventListener(Event.COMPLETE,onComplete);
         var_736 = 1;
         var_794 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_794;
      }
      
      public function stop() : Boolean
      {
         var_980.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_794 = false;
         var_980 = var_979.play(0);
         this.volume = var_736;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_736;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_980.position;
      }
      
      public function get length() : Number
      {
         return var_979.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_736 = param1;
         if(var_980 != null)
         {
            var_980.soundTransform = new SoundTransform(var_736);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_794 = true;
      }
   }
}
